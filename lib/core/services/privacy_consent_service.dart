import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trueme/core/logger/logger.dart';
import 'package:trueme/core/services/mixpanel_service.dart';

@lazySingleton
class PrivacyConsentService {
  static const String _analyticsConsentKey = 'analytics_consent';
  static const String _marketingConsentKey = 'marketing_consent';
  static const String _personalizedAdsConsentKey = 'personalized_ads_consent';
  static const String _firstConsentAskedKey = 'first_consent_asked';

  /// Sprawdź czy użytkownik wyraził zgodę na analytics
  static Future<bool> hasAnalyticsConsent() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_analyticsConsentKey) ?? false;
  }

  /// Sprawdź czy użytkownik wyraził zgodę na marketing
  static Future<bool> hasMarketingConsent() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_marketingConsentKey) ?? false;
  }

  /// Sprawdź czy użytkownik wyraził zgodę na personalized ads
  static Future<bool> hasPersonalizedAdsConsent() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_personalizedAdsConsentKey) ?? false;
  }

  /// Sprawdź czy już pytaliśmy o zgodę
  static Future<bool> hasAskedForConsent() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_firstConsentAskedKey) ?? false;
  }

  /// Ustaw zgodę na analytics
  static Future<void> setAnalyticsConsent({required bool consent}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_analyticsConsentKey, consent);
    await prefs.setBool(_firstConsentAskedKey, true);

    if (consent) {
      // Włącz Mixpanel tracking
      await MixpanelService.optInTracking();
      AppLogger.dev('Analytics consent granted - Mixpanel enabled');
    } else {
      // Wyłącz Mixpanel tracking
      await MixpanelService.optOutTracking();
      AppLogger.dev('Analytics consent denied - Mixpanel disabled');
    }
  }

  /// Ustaw zgodę na marketing
  static Future<void> setMarketingConsent({required bool consent}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_marketingConsentKey, consent);

    // Track marketing consent change
    if (await hasAnalyticsConsent()) {
      await MixpanelService.trackWithProperties('Marketing Consent Changed', {
        'consent_granted': consent,
        'timestamp': DateTime.now().toIso8601String(),
      });
    }

    AppLogger.dev('Marketing consent: $consent');
  }

  /// Ustaw zgodę na personalized ads
  static Future<void> setPersonalizedAdsConsent({required bool consent}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_personalizedAdsConsentKey, consent);

    AppLogger.dev('Personalized ads consent: $consent');
  }

  /// Ustaw wszystkie zgody jednocześnie
  static Future<void> setAllConsents({
    required bool analytics,
    required bool marketing,
    required bool personalizedAds,
  }) async {
    await PrivacyConsentService.setAnalyticsConsent(consent: true);
    await PrivacyConsentService.setMarketingConsent(consent: true);
    await PrivacyConsentService.setPersonalizedAdsConsent(consent: true);
  }

  /// Sprawdź czy możemy trackować (dla GDPR compliance)
  static Future<bool> canTrack() async {
    return hasAnalyticsConsent();
  }

  /// Reset wszystkich zgód (dla GDPR right to be forgotten)
  static Future<void> resetAllConsents() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_analyticsConsentKey);
    await prefs.remove(_marketingConsentKey);
    await prefs.remove(_personalizedAdsConsentKey);
    await prefs.remove(_firstConsentAskedKey);

    // Reset Mixpanel data
    await MixpanelService.reset();
    await MixpanelService.optOutTracking();

    AppLogger.dev('All privacy consents reset');
  }

  /// Pobierz status wszystkich zgód
  static Future<Map<String, bool>> getAllConsents() async {
    return {
      'analytics': await hasAnalyticsConsent(),
      'marketing': await hasMarketingConsent(),
      'personalized_ads': await hasPersonalizedAdsConsent(),
      'first_consent_asked': await hasAskedForConsent(),
    };
  }

  /// Export danych użytkownika (dla GDPR data portability)
  static Future<Map<String, dynamic>> exportUserData() async {
    final consents = await getAllConsents();

    return {
      'privacy_consents': consents,
      'export_date': DateTime.now().toIso8601String(),
      'mixpanel_distinct_id':
          await MixpanelService.getDistinctId() ?? 'unknown',
    };
  }
}
