import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:trueme/core/logger/logger.dart';
import 'package:trueme/core/network/auth_error.dart';
import 'package:trueme/core/network/response_failure.dart';
import 'package:trueme/core/network/rest_services.dart';
import 'package:trueme/core/services/global_config_service/global_config_service.dart';
import 'package:trueme/features/auth/data/models/auth_response.dart';

abstract class LoginService {
  Future<Either<AuthResponse, AuthError>> loginToGetExternalToken(
      String serverAuthCode,);

  Future<Either<AuthResponse, AuthError>> exchangeRefreshToken(
      String refreshToken,);
}

@Injectable(as: LoginService)
class LoginServiceImpl implements LoginService {
  @override
  Future<Either<AuthResponse, AuthError>> loginToGetExternalToken(
      String serverAuthCode,) async {
    const path = '/api/Auth/ExchangeExternalToken';

    final currentAppVersion =
        await GeneralConfigApplication.plainAppVersionWithOutBuild();

    final headers = {
      'Authorization': 'Bearer $serverAuthCode',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Accept-Encoding': 'identity'
    ,};

    AppLogger.dev(serverAuthCode);

    try {
      final queryParam = {
        'mobileAppVersion': currentAppVersion,
      };

      final response = await Api().backendDio.post<Map<String, dynamic>>(
            path,
            data: queryParam,
            options: Options(
              headers: headers,
            ),
          );

      // print(response);

      final authResponse =
          AuthResponse.fromJson(response.data!);

      return Left(authResponse);
    } on DioException catch (e, stacktrace) {
      AppLogger.dev('❗ Status: ${e.response?.statusCode}');
      AppLogger.dev('❗ Body: ${e.response?.data}');
      await Sentry.captureException(e, stackTrace: stacktrace);
      return Right(AuthFailure.mapExceptionToAuthFailure(e));
    } on Exception catch (e, stacktrace) {
      await Sentry.captureException(e, stackTrace: stacktrace);
      return Right(AuthFailure.mapExceptionToAuthFailure(e));
    }
  }

  @override
  Future<Either<AuthResponse, AuthError>> exchangeRefreshToken(
      String refreshToken,) async {
    const path = '/api/Auth/ExchangeRefreshToken';

    final currentAppVersion =
        await GeneralConfigApplication.plainAppVersionWithOutBuild();

    try {
      final body = {
        'refreshToken': refreshToken,
        'mobileAppVersion': currentAppVersion,
      };

      final response = await Api().backendDio.post<Map<String, dynamic>>(
            path,
            data: body,
          );

      final authResponse =
          AuthResponse.fromJson(response.data!);

      return Left(authResponse);
    } on DioException catch (e, stacktrace) {
      AppLogger.dev('❗ Status: ${e.response?.statusCode}');
      AppLogger.dev('❗ Body: ${e.response?.data}');
      await Sentry.captureException(e, stackTrace: stacktrace);
      return Right(AuthFailure.mapExceptionToAuthFailure(e));
    } on Exception catch (e, stacktrace) {
      await Sentry.captureException(e, stackTrace: stacktrace);
      return Right(AuthFailure.mapExceptionToAuthFailure(e));
    }
  }
}
