// ignore_for_file: avoid_positional_boolean_parameters

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton()
class SharedPreferencesService {
  SharedPreferencesService(this._preferences);

  final SharedPreferences _preferences;

  bool? getBool(String key) => _preferences.getBool(key);

  Future<bool> setBool(String key, bool value) => _preferences.setBool(
        key,
        value,
      );

  String? getString(String key) => _preferences.getString(key);

  Future<bool> setString(String key, String value) => _preferences.setString(
        key,
        value,
      );

  Future<bool> removeByKey(String key) => _preferences.remove(
        key,
      );
}
