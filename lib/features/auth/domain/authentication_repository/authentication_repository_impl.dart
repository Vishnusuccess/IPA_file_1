import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:trueme/core/constants/shared_preferenses_keys.dart';
import 'package:trueme/core/network/auth_error.dart';
import 'package:trueme/core/services/app_tracking_service.dart';
import 'package:trueme/core/services/business_metrics_service.dart';
import 'package:trueme/core/services/mixpanel_service.dart';
import 'package:trueme/core/services/shared_preferences_service.dart';
import 'package:trueme/features/auth/data/authentication_service/authentication_service_impl.dart';
import 'package:trueme/features/auth/data/user_token_repository.dart';

abstract class AuthenticationRepository {
  Future<Either<void, AuthError>> loginToGetExternalToken(
      String serverAuthCode,);

  Future<Either<void, AuthError>> exchangeRefreshToken();

  Future<TokenStatusAction> isLoggedIn();
}

@Injectable(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  AuthenticationRepositoryImpl(
    this._loginService,
    this._userTokenRepository,
    this._sharedPreferencesService,
  );

  final LoginService _loginService;
  final UserTokenRepository _userTokenRepository;
  final SharedPreferencesService _sharedPreferencesService;

  @override
  Future<Either<void, AuthError>> loginToGetExternalToken(
      String serverAuthCode,) {
    final response = _loginService.loginToGetExternalToken(serverAuthCode);
    return response.then(
      (value) => value.fold(
        (authResponse) async {
          await _userTokenRepository.saveUserToken(authResponse.token);
          await _userTokenRepository
              .saveRefreshToken(authResponse.refreshToken);
          await _sharedPreferencesService.setString(
              SharedPreferencesKeys.userId, authResponse.userId,);
          await OneSignal.login(authResponse.userId);

          await MixpanelService.identify(authResponse.userId);

          await BusinessMetricsService.trackDailyActiveUser(
              authResponse.userId,);
          await BusinessMetricsService.trackMonthlyActiveUser(
              authResponse.userId,);

          await AppTrackingService.startAppSession(authResponse.userId);

          await MixpanelService.trackWithProperties('User Login', {
            'user_id': authResponse.userId,
            'login_method': 'external_token',
            'timestamp': DateTime.now().toIso8601String(),
            'platform': 'mobile',
          });

          try {
            final userProperties = <String, dynamic>{
              'user_id': authResponse.userId,
              'last_login': DateTime.now().toIso8601String(),
              'login_method': 'external_token',
              'platform': 'mobile',
            };

            await MixpanelService.setUserProperties(userProperties);

            final userPropertiesOnce = <String, dynamic>{
              'first_login_date': DateTime.now().toIso8601String(),
              'signup_source': 'mobile_app',
            };

            await MixpanelService.setUserPropertiesOnce(userPropertiesOnce);

            final now = DateTime.now();
            final signupWeek = '${now.year}-W${_getWeekOfYear(now)}';
            final signupMonth =
                '${now.year}-${now.month.toString().padLeft(2, '0')}';

            await BusinessMetricsService.trackCohortAnalysis(
              authResponse.userId,
              signupWeek,
              signupMonth,
            );
          } catch (e) {
            await MixpanelService.setUserProperties({
              'user_id': authResponse.userId,
              'last_login': DateTime.now().toIso8601String(),
              'login_method': 'external_token',
              'platform': 'mobile',
            });
          }

          return const Left(null);
        },
        Right.new,
      ),
    );
  }

  @override
  Future<Either<void, AuthError>> exchangeRefreshToken() async {
    final refreshToken = await _userTokenRepository.getRefreshToken();
    if (refreshToken == null) {
      return Right(AuthError(message: 'No refresh token'));
    }

    final response = await _loginService.exchangeRefreshToken(refreshToken);

    return response.fold(
      (authResponse) async {
        await _userTokenRepository.saveUserToken(authResponse.token);
        await _userTokenRepository.saveRefreshToken(authResponse.refreshToken);
        return const Left(null);
      },
      Right.new,
    );
  }

  @override
  Future<TokenStatusAction> isLoggedIn() async {
    final accessToken = await _userTokenRepository.getUserToken();

    if (accessToken == null) {
      return TokenStatusAction.logoutUser;
    }

    try {
      final payload = _decodeJwt(accessToken);
      if (!payload.containsKey('exp')) {
        return TokenStatusAction.logoutUser;
      }

      final exp = payload['exp'] as int;
      final isAccessTokenExpired = _isTokenExpired(exp);
      if (isAccessTokenExpired) {
        return TokenStatusAction.tokenRemainsUpdate;
      }

      return TokenStatusAction.sessionValid;
    } on Exception catch (_) {
      return TokenStatusAction.logoutUser;
    }
  }

  Map<String, dynamic> _decodeJwt(String token) {
    final parts = token.split('.');
    if (parts.length != 3) {
      throw Exception('invalid token');
    }

    final payload = _decodeBase64(parts[1]);
    final payloadMap = json.decode(payload);
    if (payloadMap is! Map<String, dynamic>) {
      throw Exception('invalid payload');
    }

    return payloadMap;
  }

  String _decodeBase64(String str) {
    var output = str.replaceAll('-', '+').replaceAll('_', '/');

    switch (output.length % 4) {
      case 0:
        break;
      case 2:
        output += '==';
      case 3:
        output += '=';
      default:
        throw Exception('Illegal base64url string!"');
    }

    return utf8.decode(base64Url.decode(output));
  }

  /// Checks if token is expired.
  /// The provided [exp] must be seconds since epoch.
  bool _isTokenExpired(int exp) {
    final tokenExpDate = DateTime.fromMillisecondsSinceEpoch((exp - 15) * 1000);
    final now = DateTime.now();
    return tokenExpDate.isBefore(now);
  }

  /// Helper method to calculate week of year
  int _getWeekOfYear(DateTime date) {
    final startOfYear = DateTime(date.year);
    final firstMondayOfYear =
        startOfYear.subtract(Duration(days: startOfYear.weekday - 1));
    return ((date.difference(firstMondayOfYear).inDays) / 7).ceil();
  }
}

enum TokenStatusAction {
  logoutUser,
  tokenRemainsUpdate,
  sessionValid;
}
