import 'package:injectable/injectable.dart';
import 'package:trueme/core/logger/logger.dart';
import 'package:trueme/core/services/business_metrics_service.dart';
import 'package:trueme/core/services/mixpanel_service.dart';
import 'package:trueme/core/services/privacy_consent_service.dart';

@lazySingleton
class AppTrackingService {
  static String? _currentScreen;
  static DateTime? _screenStartTime;
  static DateTime? _sessionStartTime;
  static int _screensViewedInSession = 0;

  /// Sprawdź czy można trackować przed każdym eventem
  static Future<bool> _canTrack() async {
    return PrivacyConsentService.canTrack();
  }

  /// Rozpoczęcie sesji aplikacji
  static Future<void> startAppSession(String userId) async {
    if (!await _canTrack()) return;

    _sessionStartTime = DateTime.now();
    _screensViewedInSession = 0;

    // Track DAU/MAU przy każdym uruchomieniu
    await BusinessMetricsService.trackDailyActiveUser(userId);
    await BusinessMetricsService.trackMonthlyActiveUser(userId);

    AppLogger.dev('App session started for user: $userId');
  }

  /// Śledzenie wyświetlenia ekranu
  static Future<void> trackScreenView(String screenName,
      {Map<String, dynamic>? properties,}) async {
    if (!await _canTrack()) return;

    // Oblicz czas spędzony na poprzednim ekranie
    if (_currentScreen != null && _screenStartTime != null) {
      final timeSpent = DateTime.now().difference(_screenStartTime!).inSeconds;
      await MixpanelService.trackWithProperties('Screen Time', {
        'screen_name': _currentScreen,
        'time_spent_seconds': timeSpent,
        'timestamp': DateTime.now().toIso8601String(),
      });
    }

    _currentScreen = screenName;
    _screenStartTime = DateTime.now();
    _screensViewedInSession++;

    // Śledź nowe wyświetlenie ekranu
    final screenProperties = {
      'screen_name': screenName,
      'viewed_at': DateTime.now().toIso8601String(),
      'platform': 'mobile',
      'session_screen_count': _screensViewedInSession,
      ...?properties,
    };

    await MixpanelService.trackWithProperties(
        'Screen Viewed', screenProperties,);
    AppLogger.dev('Screen tracked: $screenName');
  }

  /// Śledzenie buttonów i interakcji
  static Future<void> trackButtonTap(String buttonName, String screenName,
      {Map<String, dynamic>? properties,}) async {
    if (!await _canTrack()) return;

    final tapProperties = {
      'button_name': buttonName,
      'screen_name': screenName,
      'tapped_at': DateTime.now().toIso8601String(),
      'platform': 'mobile',
      ...?properties,
    };

    await MixpanelService.trackWithProperties('Button Tapped', tapProperties);
    AppLogger.dev('Button tap tracked: $buttonName on $screenName');
  }

  /// Śledzenie zakończenia ćwiczenia
  static Future<void> trackExerciseCompletion(
      String exerciseId, int durationSeconds,
      {Map<String, dynamic>? exerciseData,}) async {
    if (!await _canTrack()) return;

    final exerciseProperties = {
      'exercise_id': exerciseId,
      'duration_seconds': durationSeconds,
      'completed_at': DateTime.now().toIso8601String(),
      'platform': 'mobile',
      ...?exerciseData,
    };

    await MixpanelService.trackWithProperties(
        'Exercise Completed', exerciseProperties,);

    // Zwiększ licznik ukończonych ćwiczeń
    await MixpanelService.incrementUserProperty('exercises_completed');

    // Dodaj do listy ukończonych ćwiczeń
    await MixpanelService.appendToUserProperty(
        'completed_exercises', exerciseId, );

    AppLogger.dev('Exercise completion tracked: $exerciseId');
  }

  /// Śledzenie rozpoczęcia ćwiczenia
  static Future<void> trackExerciseStart(String exerciseId,
      {Map<String, dynamic>? exerciseData,}) async {
    if (!await _canTrack()) return;

    final exerciseProperties = {
      'exercise_id': exerciseId,
      'started_at': DateTime.now().toIso8601String(),
      'platform': 'mobile',
      ...?exerciseData,
    };

    await MixpanelService.trackWithProperties(
        'Exercise Started', exerciseProperties,);
    await MixpanelService.incrementUserProperty('exercises_started');

    AppLogger.dev('Exercise start tracked: $exerciseId');
  }

  /// Śledzenie opuszczenia ćwiczenia (drop-off) - ważne dla analizy biznesowej
  static Future<void> trackExerciseDropOff(
      String exerciseId, int timeSpentSeconds, String reason,) async {
    if (!await _canTrack()) return;

    final dropOffProperties = {
      'exercise_id': exerciseId,
      'time_spent_seconds': timeSpentSeconds,
      'drop_off_reason': reason,
      'dropped_at': DateTime.now().toIso8601String(),
      'platform': 'mobile',
    };

    await MixpanelService.trackWithProperties(
        'Exercise Drop Off', dropOffProperties,);
    await MixpanelService.incrementUserProperty('exercise_drop_offs');

    AppLogger.dev('Exercise drop-off tracked: $exerciseId, reason: $reason');
  }

  /// Śledzenie sesji czatu
  static Future<void> trackChatSessionStart(String? chatType) async {
    if (!await _canTrack()) return;

    final chatProperties = {
      'chat_type': chatType ?? 'general',
      'started_at': DateTime.now().toIso8601String(),
      'platform': 'mobile',
    };

    await MixpanelService.trackWithProperties(
        'Chat Session Started', chatProperties,);
    await MixpanelService.incrementUserProperty('chat_sessions_count');

    await MixpanelService.setUserProperties({
      'last_chat_session': DateTime.now().toIso8601String(),
    });

    AppLogger.dev('Chat session start tracked');
  }

  /// Śledzenie zakończenia sesji czatu
  static Future<void> trackChatSessionEnd(
      String? chatType, int durationSeconds, int messagesCount,) async {
    if (!await _canTrack()) return;

    final chatProperties = {
      'chat_type': chatType ?? 'general',
      'duration_seconds': durationSeconds,
      'messages_count': messagesCount,
      'ended_at': DateTime.now().toIso8601String(),
      'platform': 'mobile',
    };

    await MixpanelService.trackWithProperties(
        'Chat Session Ended', chatProperties,);
    AppLogger.dev('Chat session end tracked');
  }

  /// Śledzenie feedbacku - ważne dla quality metrics
  static Future<void> trackFeedbackSubmitted(
      String feedbackType, int rating, String? comment, ) async {
    if (!await _canTrack()) return;

    final feedbackProperties = {
      'feedback_type': feedbackType,
      'rating': rating,
      'has_comment': comment != null && comment.isNotEmpty,
      'submitted_at': DateTime.now().toIso8601String(),
      'platform': 'mobile',
    };

    await MixpanelService.trackWithProperties(
        'Feedback Submitted', feedbackProperties,);
    await MixpanelService.incrementUserProperty('feedback_submitted_count');

    AppLogger.dev('Feedback tracked: $feedbackType, rating: $rating');
  }

  /// Śledzenie ustawień aplikacji
  static Future<void> trackSettingsChanged(
      String settingName, dynamic oldValue, dynamic newValue,) async {
    if (!await _canTrack()) return;

    final settingsProperties = {
      'setting_name': settingName,
      'old_value': oldValue?.toString() ?? 'null',
      'new_value': newValue?.toString() ?? 'null',
      'changed_at': DateTime.now().toIso8601String(),
      'platform': 'mobile',
    };

    await MixpanelService.trackWithProperties(
        'Settings Changed', settingsProperties, );
    AppLogger.dev('Settings change tracked: $settingName');
  }

  /// Śledzenie sesji aplikacji (końcowe podsumowanie)
  static Future<void> endAppSession(String userId) async {
    if (!await _canTrack()) return;

    if (_sessionStartTime == null) return;

    final sessionDuration =
        DateTime.now().difference(_sessionStartTime!).inSeconds;

    final sessionProperties = {
      'session_duration_seconds': sessionDuration,
      'screens_viewed': _screensViewedInSession,
      'ended_at': DateTime.now().toIso8601String(),
      'platform': 'mobile',
    };

    await MixpanelService.trackWithProperties('App Session', sessionProperties);
    await MixpanelService.incrementUserProperty('app_sessions_count');

    // Ustaw ostatnią aktywność
    await MixpanelService.setUserProperties({
      'last_active': DateTime.now().toIso8601String(),
      'last_session_duration': sessionDuration,
    });

    AppLogger.dev(
        'App session ended: ${sessionDuration}s, '
            '$_screensViewedInSession screens');

    // Reset session data
    _sessionStartTime = null;
    _screensViewedInSession = 0;
  }

  /// Śledzenie premium features - ważne dla business metrics
  static Future<void> trackPremiumFeatureUsed(String featureName) async {
    if (!await _canTrack()) return;

    final featureProperties = {
      'feature_name': featureName,
      'used_at': DateTime.now().toIso8601String(),
      'platform': 'mobile',
    };

    await MixpanelService.trackWithProperties(
        'Premium Feature Used', featureProperties,);
    await MixpanelService.incrementUserProperty('premium_features_used_count');

    AppLogger.dev('Premium feature tracked: $featureName');
  }

  /// Śledzenie adoption nowych funkcji
  static Future<void> trackFeatureDiscovery(
      String featureName, String discoveryMethod,) async {
    if (!await _canTrack()) return;

    final featureProperties = {
      'feature_name': featureName,
      'discovery_method':
          discoveryMethod, // 'onboarding', 'exploration', 'tutorial'
      'discovered_at': DateTime.now().toIso8601String(),
      'platform': 'mobile',
    };

    await MixpanelService.trackWithProperties(
        'Feature Discovered', featureProperties, );
    await BusinessMetricsService.trackFeatureAdoption(
      _getCurrentUserId() ?? 'unknown',
      featureName,
      isFirstTime: true,
    );

    AppLogger.dev(
        'Feature discovery tracked: $featureName via $discoveryMethod',);
  }

  /// Śledzenie conversion metrics (z trial na paid, etc.)
  static Future<void> trackConversionEvent(
      String conversionType, Map<String, dynamic> conversionData,) async {
    if (!await _canTrack()) return;

    final conversionProperties = {
      'conversion_type': conversionType,
      'converted_at': DateTime.now().toIso8601String(),
      'platform': 'mobile',
      ...conversionData,
    };

    await MixpanelService.trackWithProperties(
        'Conversion Event', conversionProperties,);
    AppLogger.dev('Conversion tracked: $conversionType');
  }

  /// Helper method - flush na koniec dnia/sesji
  static Future<void> flushEvents() async {
    if (!await _canTrack()) return;

    await MixpanelService.flush();
    AppLogger.dev('Mixpanel events flushed');
  }

  /// Helper method - calculate engagement score
  static double calculateEngagementScore(
      int sessionsThisWeek, int exercisesCompleted, int feedbacksGiven,) {
    double score = 0;

    // Sessions (max 40 points)
    score += (sessionsThisWeek * 8).clamp(0, 40);

    // Exercise completion (max 40 points)
    score += (exercisesCompleted * 5).clamp(0, 40);

    // Feedback engagement (max 20 points)
    score += (feedbacksGiven * 10).clamp(0, 20);

    return score.clamp(0, 100);
  }

  /// Getters
  static String? get currentScreen => _currentScreen;
  static int get screensViewedInSession => _screensViewedInSession;
  static DateTime? get sessionStartTime => _sessionStartTime;

  /// Helper to get current user
  /// ID (you might need to implement this based on your auth system)
  static String? _getCurrentUserId() {
    // Implement this based on your authentication system
    // For example, get from SharedPreferences or current user context
    return null; // Placeholder
  }
}
