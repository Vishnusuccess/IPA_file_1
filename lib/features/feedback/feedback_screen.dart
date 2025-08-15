import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:trueme/core/design/design.dart';
import 'package:trueme/core/l10n/l10n.dart';
import 'package:trueme/core/navigation/router.dart';
import 'package:trueme/core/presentation/base_button/gradient_button.dart';
import 'package:trueme/core/presentation/widgets/widgets.dart';
import 'package:trueme/core/service_locator/service_locater.dart';
import 'package:trueme/core/services/stage_service.dart';
import 'package:trueme/features/chatbot/bloc/chatbot_screen_bloc.dart';
import 'package:trueme/features/chatbot/data/chat_service.dart';
import 'package:trueme/features/chatbot/data/models/emotion_model.dart';
import 'package:trueme/features/chatbot/utils/chatbot_utils.dart';
import 'package:trueme/features/chatbot/utils/stage_flow_manager.dart';

@RoutePage()
class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({
    required this.blockFeedbackId,
    required this.programProgressId,
    required this.blockId,
    super.key,
  });

  final String blockFeedbackId;
  final String programProgressId;
  final String blockId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatbotScreenBloc>(
      create: (_) => getIt<ChatbotScreenBloc>(),
      child: _FeedbackScreenContent(
        programProgressId: programProgressId,
        blockId: blockId,
      ),
    );
  }
}

class _FeedbackScreenContent extends StatefulWidget {
  const _FeedbackScreenContent({
    required this.programProgressId,
    required this.blockId,
  });

  final String programProgressId;
  final String blockId;

  @override
  State<_FeedbackScreenContent> createState() => _FeedbackScreenContentState();
}

class _FeedbackScreenContentState extends State<_FeedbackScreenContent> {
  late ChatService _chatService;
  UiTextResponse? _uiText;
  bool _isLoading = true;
  String? _error;
  List<int> _ratings = [];

  @override
  void initState() {
    super.initState();
    _chatService = getIt<ChatService>();
    _loadUiText();
  }

  Future<void> _loadUiText() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    final result = await _chatService.getUiText();
    result.fold(
      (uiText) {
        setState(() {
          _uiText = uiText;
          _isLoading = false;
          // Initialize ratings array with 0s for each question
          final questions = uiText.feedback['questions'] as List<dynamic>?;
          _ratings = List.filled(questions?.length ?? 0, 0);
        });
      },
      (error) {
        setState(() {
          _error = 'Failed to load feedback questions';
          _isLoading = false;
        });
      },
    );
  }

  void _onSubmit() {
    if (_uiText?.feedback['questions'] == null) return;

    // Check if all questions are rated (no 0 values)
    if (_ratings.any((rating) => rating == 0)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(context.strings.feedbackIncompleteError),
        ),
      );
      return;
    }

    // Send feedback via ChatService directly using sendChatRequest
    // This will call the /chat endpoint with feedback_rating array
    _chatService.sendChatRequest(feedbackRating: _ratings).then((result) {
      result.fold(
        (stageResponse) {
          // Navigate to chat screen with the reply message directly
          AutoRouter.of(context).push(
            ChatRoute(
              chatbotRouteParams: ChatbotRouteParams(
                chatEndpointUtils: ChatEndpointUtils.init,
                initialMessage: stageResponse.message,
                skipInit:
                    true, // Skip calling chat/init since we have the message
              ),
            ),
          );
        },
        (error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Failed to submit feedback: $error'),
            ),
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlack,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBlack,
        elevation: 0,
        leading: const MenuButton(),
        title: Text(
          context.strings.feedbackScreenTitle,
          style: AppStyles.text16pxBold.copyWith(
            color: AppColors.primaryWhite,
          ),
        ),
        actions: [
          Builder(
            builder: (context) {
              final stageService = getIt<StageService>();
              return stageService.shouldShowChatIcon
                  ? ChatBotButton(
                      onTap: () {
                        StageFlowManager.navigateToPeriodicProgramInfo(context);
                      },
                    )
                  : const SizedBox.shrink();
            },
          ),
        ],
      ),
      body: BlocListener<ChatbotScreenBloc, ChatbotScreenState>(
        listener: (context, state) {
          state.chatbotScreenEvent.when(
            idle: () => null,
            onMoveToSplashScreen: () => AutoRouter.of(context).maybePop(),
            onNavigateToStage: (stage) {
              // Navigate based on the stage returned from chat API
              StageFlowManager.navigateBasedOnStage(
                context,
                stage: stage,
                clearStack: true,
              );
            },
          );
        },
        child: BlocBuilder<ChatbotScreenBloc, ChatbotScreenState>(
          builder: (context, state) {
            if (_isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (_error != null) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Error: $_error',
                      style: AppStyles.text16pxRegular.copyWith(
                        color: Colors.redAccent,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    GradientButton(
                      text: context.strings.buttonTryAgain,
                      onPressed: _loadUiText,
                    ),
                  ],
                ),
              );
            }

            if (_uiText?.feedback['questions'] == null) {
              return const Center(
                  child: Text('No feedback questions available.'),);
            }

            final questions = _uiText!.feedback['questions'] as List<dynamic>;
            final heading = _uiText!.feedback['heading'] as String? ??
                'Tell us more about your week:';

            return Column(
              children: [
                const Gap(Spacing.xl),
                Text(
                  heading,
                  style: AppStyles.text13pxRegular
                      .copyWith(color: AppColors.primaryGrey4),
                ),
                const Gap(Spacing.xl),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ListView.builder(
                      itemCount: questions.length,
                      itemBuilder: (context, index) {
                        final question =
                            questions[index] as Map<String, dynamic>;
                        return Padding(
                          padding: const EdgeInsets.only(bottom: Spacing.xl),
                          child: FeedbackCard(
                            title: question['question'] as String? ?? '',
                            leftLabel:
                                question['scale_left_label'] as String? ?? '',
                            rightLabel:
                                question['scale_right_label'] as String? ?? '',
                            onRatingChanged: (rating) {
                              setState(() {
                                _ratings[index] = rating;
                              });
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
                AppFooter(
                  buttonText: context.strings.feedbackSubmitButton,
                  onButtonPressed: _onSubmit,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
