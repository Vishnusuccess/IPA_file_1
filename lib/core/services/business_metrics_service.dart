import 'package:injectable/injectable.dart';
import 'package:trueme/core/logger/logger.dart';
import 'package:trueme/core/services/mixpanel_service.dart';

@lazySingleton
class BusinessMetricsService {
  /// Śledzenie Daily Active User (DAU)
  static Future<void> trackDailyActiveUser(String userId) async {
    final today = DateTime.now();
    final dateKey =
        '${today.year}-${today.month.toString().padLeft(2, '0')}'
        '-${today.day.toString().padLeft(2, '0')}';

    await MixpanelService.trackWithProperties('Daily Active User', {
      'user_id': userId,
      'date': dateKey,
      'timestamp': DateTime.now().toIso8601String(),
      'platform': 'mobile',
    });

    // Ustaw właściwość last_active_date dla MAU
    await MixpanelService.setUserProperties({
      'last_active_date': dateKey,
      'last_active_timestamp': DateTime.now().toIso8601String(),
    });

    // Ustaw właściwość first_active_date tylko raz
    await MixpanelService.setUserPropertiesOnce({
      'first_active_date': dateKey,
    });

    AppLogger.dev('DAU tracked for user: $userId on $dateKey');
  }

  /// Śledzenie Monthly Active User (MAU) - wywoływane przy logowaniu
  static Future<void> trackMonthlyActiveUser(String userId) async {
    final today = DateTime.now();
    final monthKey = '${today.year}-${today.month.toString().padLeft(2, '0')}';

    await MixpanelService.trackWithProperties('Monthly Active User', {
      'user_id': userId,
      'month': monthKey,
      'timestamp': DateTime.now().toIso8601String(),
      'platform': 'mobile',
    });

    await MixpanelService.setUserProperties({
      'last_active_month': monthKey,
    });

    await MixpanelService.setUserPropertiesOnce({
      'first_active_month': monthKey,
    });

    AppLogger.dev('MAU tracked for user: $userId in $monthKey');
  }

  /// Śledzenie retencji użytkownika (powroty do aplikacji)
  static Future<void> trackUserRetention(
      String userId, int daysSinceFirstLogin,) async {
    var retentionCohort = 'new_user';

    if (daysSinceFirstLogin == 1) {
      retentionCohort = 'day_1_retention';
    } else if (daysSinceFirstLogin == 7) {
      retentionCohort = 'day_7_retention';
    } else if (daysSinceFirstLogin == 30) {
      retentionCohort = 'day_30_retention';
    } else if (daysSinceFirstLogin > 30) {
      retentionCohort = 'long_term_retention';
    }

    await MixpanelService.trackWithProperties('User Retention', {
      'user_id': userId,
      'days_since_first_login': daysSinceFirstLogin,
      'retention_cohort': retentionCohort,
      'timestamp': DateTime.now().toIso8601String(),
      'platform': 'mobile',
    });

    await MixpanelService.setUserProperties({
      'retention_cohort': retentionCohort,
      'days_since_first_login': daysSinceFirstLogin,
    });

    AppLogger.dev('Retention tracked: $retentionCohort for user $userId');
  }

  /// Śledzenie częstotliwości używania aplikacji
  static Future<void> trackAppUsageFrequency(
      String userId, int sessionsThisWeek, int sessionsThisMonth,) async {
    var usageSegment = 'light_user';

    if (sessionsThisWeek >= 5) {
      usageSegment = 'power_user';
    } else if (sessionsThisWeek >= 2) {
      usageSegment = 'regular_user';
    }

    await MixpanelService.trackWithProperties('App Usage Frequency', {
      'user_id': userId,
      'sessions_this_week': sessionsThisWeek,
      'sessions_this_month': sessionsThisMonth,
      'usage_segment': usageSegment,
      'timestamp': DateTime.now().toIso8601String(),
      'platform': 'mobile',
    });

    await MixpanelService.setUserProperties({
      'usage_segment': usageSegment,
      'sessions_this_week': sessionsThisWeek,
      'sessions_this_month': sessionsThisMonth,
    });

    AppLogger.dev('Usage frequency tracked: $usageSegment for user $userId');
  }

  /// Śledzenie engagement score (na podstawie aktywności)
  static Future<void> trackEngagementScore(
      String userId, double engagementScore,) async {
    var engagementLevel = 'low';

    if (engagementScore >= 80) {
      engagementLevel = 'very_high';
    } else if (engagementScore >= 60) {
      engagementLevel = 'high';
    } else if (engagementScore >= 40) {
      engagementLevel = 'medium';
    }

    await MixpanelService.trackWithProperties('User Engagement', {
      'user_id': userId,
      'engagement_score': engagementScore,
      'engagement_level': engagementLevel,
      'timestamp': DateTime.now().toIso8601String(),
      'platform': 'mobile',
    });

    await MixpanelService.setUserProperties({
      'engagement_score': engagementScore,
      'engagement_level': engagementLevel,
    });

    AppLogger.dev(
        'Engagement tracked: $engagementLevel'
            ' ($engagementScore) for user $userId',);
  }

  /// Śledzenie completion rate dla ćwiczeń (ważna metryka biznesowa)
  static Future<void> trackExerciseCompletionRate(
      String userId, int completedExercises, int startedExercises,) async {
    final completionRate = startedExercises > 0
        ? (completedExercises / startedExercises) * 100
        : 0.0;

    var completionSegment = 'low_completion';
    if (completionRate >= 80) {
      completionSegment = 'high_completion';
    } else if (completionRate >= 50) {
      completionSegment = 'medium_completion';
    }

    await MixpanelService.trackWithProperties('Exercise Completion Rate', {
      'user_id': userId,
      'completed_exercises': completedExercises,
      'started_exercises': startedExercises,
      'completion_rate': completionRate,
      'completion_segment': completionSegment,
      'timestamp': DateTime.now().toIso8601String(),
      'platform': 'mobile',
    });

    await MixpanelService.setUserProperties({
      'exercise_completion_rate': completionRate,
      'completion_segment': completionSegment,
      'total_exercises_completed': completedExercises,
      'total_exercises_started': startedExercises,
    });

    AppLogger.dev('Completion rate tracked: $completionRate% for user $userId');
  }

  /// Śledzenie progresji użytkownika w programie
  static Future<void> trackProgramProgress(String userId, String programId,
      int completedSteps, int totalSteps,) async {
    final progressPercentage =
        totalSteps > 0 ? (completedSteps / totalSteps) * 100 : 0.0;

    await MixpanelService.trackWithProperties('Program Progress', {
      'user_id': userId,
      'program_id': programId,
      'completed_steps': completedSteps,
      'total_steps': totalSteps,
      'progress_percentage': progressPercentage,
      'timestamp': DateTime.now().toIso8601String(),
      'platform': 'mobile',
    });

    await MixpanelService.setUserProperties({
      'current_program_id': programId,
      'program_progress_percentage': progressPercentage,
      'completed_steps': completedSteps,
    });

    AppLogger.dev(
        'Program progress tracked: $progressPercentage% for user $userId',);
  }

  /// Śledzenie quality score (na podstawie feedbacku)
  static Future<void> trackQualityScore(
      String userId, double averageRating, int totalFeedbacks,) async {
    await MixpanelService.trackWithProperties('Quality Score', {
      'user_id': userId,
      'average_rating': averageRating,
      'total_feedbacks': totalFeedbacks,
      'timestamp': DateTime.now().toIso8601String(),
      'platform': 'mobile',
    });

    await MixpanelService.setUserProperties({
      'average_rating': averageRating,
      'total_feedbacks_given': totalFeedbacks,
    });

    AppLogger.dev('Quality score tracked: $averageRating for user $userId');
  }

  /// Śledzenie cohort analysis (grupa użytkowników z tego samego okresu)
  static Future<void> trackCohortAnalysis(
      String userId, String signupWeek, String signupMonth,) async {
    await MixpanelService.trackWithProperties('Cohort Analysis', {
      'user_id': userId,
      'signup_week': signupWeek,
      'signup_month': signupMonth,
      'timestamp': DateTime.now().toIso8601String(),
      'platform': 'mobile',
    });

    await MixpanelService.setUserPropertiesOnce({
      'signup_week': signupWeek,
      'signup_month': signupMonth,
    });

    AppLogger.dev('Cohort tracked: $signupWeek for user $userId');
  }

  /// Śledzenie feature adoption (jakie funkcje są używane)
  static Future<void> trackFeatureAdoption(
      String userId, String featureName, {required bool isFirstTime,}) async {
    await MixpanelService.trackWithProperties('Feature Adoption', {
      'user_id': userId,
      'feature_name': featureName,
      'is_first_time': isFirstTime,
      'timestamp': DateTime.now().toIso8601String(),
      'platform': 'mobile',
    });

    if (isFirstTime) {
      await MixpanelService.appendToUserProperty(
        'adopted_features',
        featureName,
      );
    }

    await MixpanelService.incrementUserProperty('${featureName}_usage_count');

    AppLogger.dev('Feature adoption tracked: $featureName for user $userId');
  }

  /// Weekly/Monthly summary metrics
  static Future<void> trackWeeklySummary(
      String userId, Map<String, dynamic> weeklyStats,) async {
    await MixpanelService.trackWithProperties('Weekly Summary', {
      'user_id': userId,
      'week_start': weeklyStats['week_start'],
      'total_sessions': weeklyStats['total_sessions'],
      'exercises_completed': weeklyStats['exercises_completed'],
      'chat_sessions': weeklyStats['chat_sessions'],
      'avg_session_duration': weeklyStats['avg_session_duration'],
      'timestamp': DateTime.now().toIso8601String(),
      'platform': 'mobile',
    });

    await MixpanelService.setUserProperties({
      'last_week_sessions': weeklyStats['total_sessions'],
      'last_week_exercises': weeklyStats['exercises_completed'],
    });

    AppLogger.dev('Weekly summary tracked for user $userId');
  }
}
