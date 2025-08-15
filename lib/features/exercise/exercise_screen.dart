import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:trueme/core/design/design.dart';
import 'package:trueme/core/l10n/l10n.dart';
import 'package:trueme/core/navigation/router.gr.dart';
import 'package:trueme/core/presentation/base_scaffold/base_scaffold.dart';
import 'package:trueme/core/presentation/widgets/widgets.dart';
import 'package:trueme/core/service_locator/service_locater.dart';
import 'package:trueme/core/services/onboarding_service.dart';
import 'package:trueme/core/services/stage_service.dart';
import 'package:trueme/features/chatbot/data/models/chat_stage_response_model.dart';
import 'package:trueme/features/chatbot/utils/chatbot_utils.dart';
import 'package:trueme/features/exercise/bloc/exercise_page_bloc.dart';
import 'package:trueme/features/exercise/event_listener/exercise_screen_listener.dart';
import 'package:trueme/features/exercise/widgets/multi_select_answer_grid.dart';

// Global flag to track onboarding phase
bool _isInOnboardingSecondPhase = false;

@RoutePage()
class ExerciseScreen extends StatefulWidget {
  const ExerciseScreen({
    super.key,
  });

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  final GlobalKey _chatBot1 = GlobalKey();
  final GlobalKey _dayTimeLabel = GlobalKey();
  final GlobalKey _nextCheckIn = GlobalKey();
  final GlobalKey _chatBot2 = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override

  Widget build(BuildContext context) {
    return BlocProvider<ExercisePageBloc>(
      key: UniqueKey(), // Force recreation of bloc instance
      create: (_) {
        return getIt<ExercisePageBloc>()
          ..add(const ExercisePageEvent.onInit())
          ..add(const ExercisePageEvent.onGetEmotions())
          ..add(const ExercisePageEvent.onGetUiText())
          // Fetch 7-day program data
          ..add(const ExercisePageEvent.onGetCheckinProgress())
          ..add(const ExercisePageEvent.onGetChatStatus());
      },
      child: ExerciseScreenEventListener(
        child: ShowCaseWidget(
          onComplete: (index, key) {
            final onboardingService = getIt<OnboardingService>();

            if (!_isInOnboardingSecondPhase && index == 1) {
              onboardingService.markBeforeSubmitOnboardingCompleted();
            } else if (_isInOnboardingSecondPhase && index == 1) {
              onboardingService.markAfterSubmitOnboardingCompleted();
            }
          },
          builder: (context) => _ExerciseScreenContent(
            chatBot1Key: _chatBot1,
            dayTimeLabelKey: _dayTimeLabel,
            nextCheckInKey: _nextCheckIn,
            chatBot2Key: _chatBot2,
          ),
        ),
      ),
    );
  }
}

class _ExerciseScreenContent extends StatefulWidget {
  const _ExerciseScreenContent({
    required this.chatBot1Key,
    required this.dayTimeLabelKey,
    required this.nextCheckInKey,
    required this.chatBot2Key,
  });

  final GlobalKey chatBot1Key;
  final GlobalKey dayTimeLabelKey;
  final GlobalKey nextCheckInKey;
  final GlobalKey chatBot2Key;

  @override
  State<_ExerciseScreenContent> createState() => _ExerciseScreenContentState();
}

class _ExerciseScreenContentState extends State<_ExerciseScreenContent> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final onboardingService = getIt<OnboardingService>();
      if (!onboardingService.isBeforeSubmitOnboardingCompleted) {
        // Show only step 1 and 2 on entry (before submit phase)
        _isInOnboardingSecondPhase = false;
        ShowCaseWidget.of(context)
            .startShowCase([widget.chatBot1Key, widget.dayTimeLabelKey]);
      }
    });
  }

  bool _shouldShowChatButton() {
    final stageService = getIt<StageService>();
    final currentStage = stageService.currentStage;

    // Show chat button only for periodic stages, not for onboarding_emotion
    return currentStage == ChatStage.periodicProgramInfo ||
        currentStage == ChatStage.periodicCheckinEmotion;
  }

  void _handleChatIconClick() {
    final stageService = getIt<StageService>();
    final currentStage = stageService.currentStage;

    if (currentStage == ChatStage.periodicCheckinEmotion) {
      // Special handling for periodic_checkin_emotion stage
      // Navigate to chat screen and send emotion-info message
      context.router.push(
        ChatRoute(
          chatbotRouteParams: ChatbotRouteParams(
            chatEndpointUtils: ChatEndpointUtils.init,
            shouldSendEmotionInfo:
                true, // Add flag to indicate we should send emotion-info
            cameFromExercise:
                true, // Remember that user came from exercise screen
          ),
        ),
      );
    } else {
      // Default behavior for other stages
      context.router.push(
        ChatRoute(
          chatbotRouteParams: ChatbotRouteParams(
            chatEndpointUtils: ChatEndpointUtils.init,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      backgorundColor: AppColors.primaryBlack,
      body: Column(
        children: [
          BlocBuilder<ExercisePageBloc, ExercisePageState>(
            builder: (context, state) => AppBar(
              backgroundColor: AppColors.primaryBlack,
              elevation: 0,
              leading: const MenuButton(),
              title: Text(
                state.uiText?.moodCheck['title'] as String? ??
                    'EXERCISE TITLE',
                style: AppStyles.text16pxBold.copyWith(
                  color: AppColors.primaryWhite,
                ),
              ),
              actions: [
                if (_shouldShowChatButton())
                  Padding(
                    padding: const EdgeInsets.only(right: Spacing.m),
                    child: Stack(
                      children: [
                        Showcase(
                          key: widget.chatBot1Key,
                          tooltipBackgroundColor: AppColors.primaryGrey7,
                          descTextStyle: AppStyles.text16pxRegular.copyWith(
                            color: AppColors.primaryWhite,
                          ),
                          tooltipBorderRadius:
                              BorderRadius.circular(BorderRadiusSize.m),
                          tooltipPadding: const EdgeInsets.all(Spacing.m),
                          tooltipActions: [
                            TooltipActionButton(
                              type: TooltipDefaultActionType.next,
                              textStyle: AppStyles.text16pxMedium.copyWith(
                                color: AppColors.white,
                              ),
                              backgroundColor: AppColors.accentLightPurpleBlue,
                            ),
                          ],
                          description: context.strings.chatStartConversation,
                          child: ChatBotButton(
                            onTap: _handleChatIconClick,
                          ),
                        ),
                        // Fourth showcase (same position, same button)
                        Showcase(
                          key: widget.chatBot2Key,
                          tooltipBackgroundColor: AppColors.primaryGrey7,
                          descTextStyle: AppStyles.text16pxRegular.copyWith(
                            color: AppColors.primaryWhite,
                          ),
                          tooltipBorderRadius:
                              BorderRadius.circular(BorderRadiusSize.m),
                          tooltipPadding: const EdgeInsets.all(Spacing.m),
                          tooltipActions: [
                            TooltipActionButton(
                              type: TooltipDefaultActionType.next,
                              textStyle: AppStyles.text16pxMedium.copyWith(
                                color: AppColors.white,
                              ),
                              backgroundColor: AppColors.accentLightPurpleBlue,
                            ),
                          ],
                          description: context.strings.chatRememberWaiting,
                          child: ChatBotButton(
                            onTap: _handleChatIconClick,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<ExercisePageBloc, ExercisePageState>(
              builder: (context, state) {
                // Show step 3 and 4 showcase when exercise is completed

                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (state.potentialAnswers.isEmpty) {
                  return Center(
                    child: Text(
                      context.strings.exerciseNoData,
                      style: const TextStyle(color: AppColors.primaryWhite),
                    ),
                  );
                }

                return Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Spacing.m,
                          vertical: Spacing.xs,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppProgressProgram(
                              // Use daily_prompt_day
                              // from chat status as current day (7-day program)
                              dayTime: context.strings.exerciseDayTimeFormat(
                                state.chatStatus?.dailyPromptDay ?? 1,
                              ),
                              // Use total_checkins_done
                              // from checkin progress (21 total stages)
                              completedSteps:
                                  state.checkinProgress?.totalCheckinsDone ?? 0,
                              // 7-day program - calculate days
                              // left based on current day
                              daysLeft: 7 -
                                  (state.chatStatus?.dailyPromptDay ?? 1) +
                                  1,
                              // Fixed 21 stages total (3 per day × 7 days)
                              allSteps: 21,
                              // Use nextCheckinTime from chat status based
                              // on seconds_until_next_checkin
                              targetTime: state.chatStatus?.nextCheckinTime,
                              dayTimeLabelKey: widget.dayTimeLabelKey,
                              nextCheckInKey: widget.nextCheckInKey,
                            ),
                            const Gap(Spacing.xl),
                            Center(
                              child: SizedBox(
                                width: 290,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      state.uiText?.moodCheck['heading']
                                              as String? ??
                                          'HERE SHOULD BE TITLE',
                                      style: AppStyles.text16pxBold.copyWith(
                                        color: AppColors.primaryWhite,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Gap(Spacing.m),
                            const MultiSelectAnswerGrid(),
                          ],
                        ),
                      ),
                    ),
                    AppFooter(
                      buttonText: context.strings.exerciseSubmitButton,
                      onButtonPressed: () {
                        context.read<ExercisePageBloc>().add(
                              ExercisePageEvent.onSendEmotions(
                                  state.selectedAnswers,),
                            );
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  int calculateDaysLeft(DateTime targetDate) {
    final now = DateTime.now().toUtc();
    final difference = targetDate.difference(now);

    final rawDays = difference.inDays;
    final daysLeft = max(1, rawDays);

    return daysLeft;
  }

}
