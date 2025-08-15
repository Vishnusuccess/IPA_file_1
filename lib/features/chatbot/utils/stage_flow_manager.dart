import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trueme/core/navigation/router.gr.dart';
import 'package:trueme/features/chatbot/data/models/chat_stage_response_model.dart';
import 'package:trueme/features/chatbot/utils/chatbot_utils.dart';

class StageFlowManager {
  // Check if 8 hours have passed since last check-in
  static Future<bool> shouldCheckPeriodicStatus() async {
    // This would typically check a timestamp stored in shared preferences
    // For now, we'll return true to indicate checking is needed
    // In a real implementation, you would:
    // 1. Get last check-in time from shared preferences
    // 2. Compare with current time
    // 3. Return true if >= 8 hours have passed
    return true;
  }

  static Future<void> navigateBasedOnStage(
    BuildContext context, {
    required ChatStage stage,
    String? programId,
    String? programProgressId,
    String? exerciseId,
    String? blockFeedbackId,
    String? blockId,
    bool clearStack = false,
  }) async {
    final router = context.router;

    switch (stage) {
      // All chat stages → chatbot
      case ChatStage.onboardingIntro:
      case ChatStage.periodicProgramInfo:
      case ChatStage.normalChat:
      case ChatStage.reportReady:
      case ChatStage.chatCompleted:
        if (clearStack) {
          await router.replaceAll([
            ChatRoute(
              chatbotRouteParams: ChatbotRouteParams(
                chatEndpointUtils: ChatEndpointUtils.init,
              ),
            ),
          ], updateExistingRoutes: false,);
        } else {
          await router.push(ChatRoute(
            chatbotRouteParams: ChatbotRouteParams(
              chatEndpointUtils: ChatEndpointUtils.init,
            ),
          ),);
        }

      // Calmness stages → impact metric screen
      case ChatStage.onboardingCalmness:
      case ChatStage.finalCalmness:
        if (clearStack) {
          await router.replaceAll([const ImpactMetricRoute()],
              updateExistingRoutes: false,);
        } else {
          await router.push(const ImpactMetricRoute());
        }

      // Emotion stages → exercise screen
      case ChatStage.onboardingEmotion:
      case ChatStage.periodicCheckinEmotion:
        debugPrint(
            '🚀 StageFlowManager: Navigating to ExerciseRoute, '
                'clearStack: $clearStack');
        if (clearStack) {
          await router
              .replaceAll([const ExerciseRoute()], updateExistingRoutes: false);
        } else {
          await router.push(const ExerciseRoute());
        }

      // Feedback stage → feedback screen
      case ChatStage.feedbackPending:
        // Use mock data for feedback screen
        if (clearStack) {
          await router.replaceAll([
            FeedbackRoute(
              blockFeedbackId: 'mock_block_feedback_id',
              programProgressId: 'mock_program_progress_id',
              blockId: 'mock_block_id',
            ),
          ], updateExistingRoutes: false,);
        } else {
          await router.push(FeedbackRoute(
            blockFeedbackId: 'mock_block_feedback_id',
            programProgressId: 'mock_program_progress_id',
            blockId: 'mock_block_id',
          ),);
        }
    }
  }

  static bool shouldRedirectToExternalScreen(ChatStage stage) {
    return stage == ChatStage.onboardingCalmness ||
        stage == ChatStage.finalCalmness ||
        stage == ChatStage.onboardingEmotion ||
        stage == ChatStage.periodicCheckinEmotion ||
        stage == ChatStage.feedbackPending;
  }

  static Future<void> navigateToPeriodicProgramInfo(
      BuildContext context,) async {
    final router = context.router;

    // Navigate to chat and it will handle the periodic_program_info stage
    await router.push(ChatRoute(
      chatbotRouteParams: ChatbotRouteParams(
        chatEndpointUtils: ChatEndpointUtils.init,
      ),
    ),);
  }

  static String getEndpointForStage(ChatStage stage) {
    switch (stage) {
      case ChatStage.onboardingIntro:
      case ChatStage.periodicProgramInfo:
      case ChatStage.normalChat:
      case ChatStage.reportReady:
      case ChatStage.chatCompleted:
        return '/chat';
      case ChatStage.onboardingCalmness:
      case ChatStage.finalCalmness:
        return '/chat'; // API endpoint for calmness data
      case ChatStage.onboardingEmotion:
      case ChatStage.periodicCheckinEmotion:
        return '/chat'; // API endpoint for emotion data
      case ChatStage.feedbackPending:
        return '/chat'; // API endpoint for feedback data
    }
  }
}
