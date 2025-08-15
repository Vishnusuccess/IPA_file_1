import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trueme/core/constants/shared_preferenses_keys.dart';

@injectable
class OnboardingService {
  const OnboardingService(this._sharedPreferences);

  final SharedPreferences _sharedPreferences;

  bool get isOnboardingCompleted {
    return _sharedPreferences
            .getBool(SharedPreferencesKeys.onboardingCompleted) ??
        false;
  }

  bool get isBeforeSubmitOnboardingCompleted {
    return _sharedPreferences
            .getBool(SharedPreferencesKeys.beforeSubmitOnboarding) ??
        false;
  }

  bool get isAfterSubmitOnboardingCompleted {
    return _sharedPreferences
            .getBool(SharedPreferencesKeys.afterSubmitOnboarding) ??
        false;
  }

  Future<void> markOnboardingCompleted() async {
    await _sharedPreferences.setBool(
        SharedPreferencesKeys.onboardingCompleted, true,);
  }

  Future<void> markBeforeSubmitOnboardingCompleted() async {
    await _sharedPreferences.setBool(
        SharedPreferencesKeys.beforeSubmitOnboarding, true,);
  }

  Future<void> markAfterSubmitOnboardingCompleted() async {
    await _sharedPreferences.setBool(
        SharedPreferencesKeys.afterSubmitOnboarding, true,);
    // If both phases are completed, mark whole onboarding as completed
    if (isBeforeSubmitOnboardingCompleted) {
      await markOnboardingCompleted();
    }
  }

  Future<void> clearOnboardingState() async {
    await _sharedPreferences.remove(SharedPreferencesKeys.onboardingCompleted);
    await _sharedPreferences
        .remove(SharedPreferencesKeys.beforeSubmitOnboarding);
    await _sharedPreferences
        .remove(SharedPreferencesKeys.afterSubmitOnboarding);
  }
}
