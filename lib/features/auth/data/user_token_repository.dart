import 'package:injectable/injectable.dart';
import 'package:trueme/core/constants/shared_preferenses_keys.dart';
import 'package:trueme/core/services/shared_preferences_service.dart';

abstract class UserTokenRepository {
  Future<String?> getUserToken();
  Future<void> saveUserToken(String token);
  Future<void> removeUserToken();
  Future<String?> getRefreshToken();
  Future<void> saveRefreshToken(String refreshToken);
  Future<void> removeRefreshToken();
}

@LazySingleton(as: UserTokenRepository)
class UserTokenRepositoryImpl implements UserTokenRepository {
  UserTokenRepositoryImpl(this._sharedPreferencesService);

  final SharedPreferencesService _sharedPreferencesService;

  @override
  Future<String?> getUserToken() async {
    return _sharedPreferencesService.getString(SharedPreferencesKeys.userToken);
  }

  @override
  Future<void> saveUserToken(String token) async {
    await _sharedPreferencesService.setString(
        SharedPreferencesKeys.userToken, token,);
  }

  @override
  Future<void> removeUserToken() async {
    await _sharedPreferencesService
        .removeByKey(SharedPreferencesKeys.userToken);
  }

  @override
  Future<String?> getRefreshToken() async {
    return _sharedPreferencesService
        .getString(SharedPreferencesKeys.refreshToken);
  }

  @override
  Future<void> saveRefreshToken(String refreshToken) async {
    await _sharedPreferencesService.setString(
        SharedPreferencesKeys.refreshToken, refreshToken,);
  }

  @override
  Future<void> removeRefreshToken() async {
    await _sharedPreferencesService
        .removeByKey(SharedPreferencesKeys.refreshToken);
  }
}
