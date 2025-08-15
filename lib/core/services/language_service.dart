import 'package:injectable/injectable.dart';
import 'package:trueme/core/constants/shared_preferenses_keys.dart';
import 'package:trueme/core/services/shared_preferences_service.dart';
import 'package:trueme/features/user/data/user_repository.dart';

enum AppLanguage {
  english('en', 'Eng'),
  polish('pl', 'Pol');

  const AppLanguage(this.code, this.apiCode);

  final String code;
  final String apiCode;

  static AppLanguage fromCode(String code) {
    return AppLanguage.values.firstWhere(
      (lang) => lang.code == code,
      orElse: () => AppLanguage.english,
    );
  }

  static AppLanguage fromApiCode(String apiCode) {
    return AppLanguage.values.firstWhere(
      (lang) => lang.apiCode == apiCode,
      orElse: () => AppLanguage.english,
    );
  }
}

@LazySingleton()
class LanguageService {
  LanguageService(
    this._sharedPreferencesService,
    this._userRepository,
  );

  final SharedPreferencesService _sharedPreferencesService;
  final UserRepository _userRepository;

  Future<AppLanguage> getCurrentLanguage() async {
    final savedLanguage = _sharedPreferencesService
        .getString(SharedPreferencesKeys.languagePreference);

    if (savedLanguage != null) {
      return AppLanguage.fromCode(savedLanguage);
    }

    // Default to English regardless of device locale
    return AppLanguage.english;
  }

  Future<void> setLanguage(AppLanguage language) async {
    try {
      // Save locally first
      await _sharedPreferencesService.setString(
        SharedPreferencesKeys.languagePreference,
        language.code,
      );

      // Send to backend
      final result = await _userRepository.setUserLanguage(language.code);
      result.fold(
        (_) {
          // Success - language set on backend
        },
        (error) {
          // If backend call fails, we still have the local setting
          // The user can continue using the app with their preferred language
          // Error is logged via Sentry in the repository
        },
      );
    } catch (e) {
      // If there's any error, we still save locally to
      // ensure the user's preference is preserved
      await _sharedPreferencesService.setString(
        SharedPreferencesKeys.languagePreference,
        language.code,
      );
      // Re-throw to let the caller handle the error
      rethrow;
    }
  }

  Future<String> getCurrentLanguageApiCode() async {
    final language = await getCurrentLanguage();
    return language.apiCode;
  }

  Future<bool> isLanguageSet() async {
    final savedLanguage = _sharedPreferencesService
        .getString(SharedPreferencesKeys.languagePreference);
    return savedLanguage != null;
  }
}
