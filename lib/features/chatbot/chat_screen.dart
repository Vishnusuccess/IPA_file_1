import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trueme/core/design/app_icons.dart';
import 'package:trueme/core/design/design.dart';
import 'package:trueme/core/l10n/l10n.dart';
import 'package:trueme/core/navigation/router.gr.dart';
import 'package:trueme/core/presentation/base_scaffold/base_scaffold.dart';
import 'package:trueme/core/presentation/widgets/widgets.dart';
import 'package:trueme/core/service_locator/service_locater.dart';
import 'package:trueme/core/services/stage_service.dart';
import 'package:trueme/features/chatbot/bloc/chatbot_screen_bloc.dart';
import 'package:trueme/features/chatbot/data/models/chat_stage_response_model.dart';
import 'package:trueme/features/chatbot/event_listener/chatbot_screen_listener.dart';
import 'package:trueme/features/chatbot/utils/chatbot_utils.dart';

@RoutePage()
class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key,
    this.chatbotRouteParams,
  });

  final ChatbotRouteParams? chatbotRouteParams;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatbotScreenBloc>(
      create: (_) => getIt<ChatbotScreenBloc>(param1: chatbotRouteParams)
        ..add(
          const ChatbotScreenEvent.onInit(),
        ),
      child: ChatScreenEventListener(
        child: _ChatScreenContent(
          chatbotRouteParams: chatbotRouteParams,
        ),
      ),
    );
  }
}

class _ChatScreenContent extends StatefulWidget {
  const _ChatScreenContent({
    this.chatbotRouteParams,
  });

  final ChatbotRouteParams? chatbotRouteParams;

  @override
  State<_ChatScreenContent> createState() => __ChatScreenContentState();
}

class __ChatScreenContentState extends State<_ChatScreenContent> {
  final ScrollController _scrollController = ScrollController();

  // Remember the original stage when user came from exercise
  bool _hasAutoScrolledOnInit =
      false; // Flag to track if we've already auto-scrolled

  @override
  void initState() {
    super.initState();
    // Remember the original stage if user came from exercise
    // if (widget.chatbotRouteParams?.cameFromExercise == true) {
    //   final stageService = getIt<StageService>();
    // }
  }
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _onRefresh() async {
    final bloc = context.read<ChatbotScreenBloc>();

    if (bloc.state.hasMoreMessages &&
        !bloc.state.isLoadingMore &&
        !bloc.state.isLoading) {
      final beforeOffset = _scrollController.offset;

      bloc.loadNextPage();

      await Future.doWhile(() async {
        await Future<void>.delayed(const Duration(milliseconds: 100));
        return bloc.state.isLoadingMore;
      });

      // Restore scroll position after loading
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_scrollController.hasClients) {
          _scrollController.jumpTo(beforeOffset);
        }
      });
    }
  }

  String _getProgressButtonTextForStage(BuildContext context, ChatStage stage) {
    switch (stage) {
      case ChatStage.periodicCheckinEmotion:
      case ChatStage.onboardingEmotion:
        return context.strings.buttonGoToExercise;
      case ChatStage.onboardingCalmness:
      case ChatStage.finalCalmness:
        return context.strings.buttonStartImpactMetric;
      case ChatStage.feedbackPending:
        return context.strings.buttonGiveFeedback;
      case ChatStage.onboardingIntro:
      case ChatStage.periodicProgramInfo:
      case ChatStage.normalChat:
      case ChatStage.reportReady:
      case ChatStage.chatCompleted:
        return context.strings.buttonContinue;
    }
  }

  bool _shouldShowBackToExerciseButton(ChatbotScreenState state) {
    final stageService = getIt<StageService>();
    final cameFromExercise
    = widget.chatbotRouteParams?.cameFromExercise ?? false;
    final effective = stageService.hintStage ?? stageService.currentStage;

    return cameFromExercise && effective == ChatStage.periodicCheckinEmotion;
  }
  void _handleBackToExercise() {
    // Navigate back to exercise screen
    context.router.push(const ExerciseRoute());
  }

  void _handleProgression(BuildContext context, ChatStage stage) {
    // Navigate to appropriate screen based on the stage
    switch (stage) {
      case ChatStage.periodicCheckinEmotion:
      case ChatStage.onboardingEmotion:
        // Navigate to exercise page
        context.router.push(const ExerciseRoute());
      case ChatStage.onboardingCalmness:
      case ChatStage.finalCalmness:
        // Navigate to impact metric page
        context.router.push(const ImpactMetricRoute());
      case ChatStage.feedbackPending:
        // Navigate to feedback page with mock parameters
        context.router.push(FeedbackRoute(
          blockFeedbackId: 'mock_block_feedback_id',
          programProgressId: 'mock_program_progress_id',
          blockId: 'mock_block_id',
        ),);
      case ChatStage.onboardingIntro:
      case ChatStage.periodicProgramInfo:
      case ChatStage.normalChat:
        context.router.push(const ExerciseRoute());
      case ChatStage.reportReady:
      case ChatStage.chatCompleted:
        // Continue with normal chat flow - no navigation needed
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatbotScreenBloc, ChatbotScreenState>(
      builder: (context, state) {
        final userName = state.userName;
        return BaseScaffold(
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const MenuButton(),
                  Center(
                    child: RichText(
                      text: const TextSpan(
                        style: AppStyles.subtitle19pxBold,
                        children: [
                          TextSpan(
                            text: 'True',
                            style: TextStyle(color: AppColors.white),
                          ),
                          TextSpan(
                            text: 'Me',
                            style: TextStyle(color: AppColors.accentPurpleBlue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_shouldShowBackToExerciseButton(state)) Padding(
                          padding: const EdgeInsets.only(right: Spacing.m),
                          child: ChatBotButton(onTap: _handleBackToExercise),
                        ) else const SizedBox(width: 40),
                ],
              ),
              Expanded(
                child: BlocConsumer<ChatbotScreenBloc, ChatbotScreenState>(
                  listener: (context, state) {
                    if (state.messages.isNotEmpty && !state.isLoadingMore) {
                      final latestTimestamp = state.messages
                          .map((m) => m.messageDate)
                          .whereType<DateTime>()
                          .fold<DateTime?>(
                              null,
                              (latest, current) =>
                                  latest == null || current.isAfter(latest)
                                      ? current
                                      : latest,);

                      final shouldAutoScroll =
                          (state.isInitialLoading == false &&
                                  !state.isLoading &&
                                  !_hasAutoScrolledOnInit) ||
                              (latestTimestamp != null &&
                                  DateTime.now()
                                          .difference(latestTimestamp)
                                          .inSeconds <
                                      5);

                      if (shouldAutoScroll) {
                        if (!_hasAutoScrolledOnInit) {
                          _hasAutoScrolledOnInit = true;
                        }

                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          if (_scrollController.hasClients) {
                            _scrollController.animateTo(
                              _scrollController.position.maxScrollExtent,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeOut,
                            );
                          }
                        });
                      }
                    }
                  },
                  builder: (context, state) {
                    if (state.isLoading && state.messages.isEmpty) {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: AppColors.primaryWhite,
                        ),
                      );
                    }

                    return Column(
                      children: [
                        Expanded(
                          child: RefreshIndicator(
                            backgroundColor: AppColors.primaryWhite,
                            color: AppColors.accentPurpleBlue,
                            strokeWidth: 2,
                            onRefresh: _onRefresh,
                            child: ListView.builder(
                              controller: _scrollController,
                              padding: const EdgeInsets.all(Spacing.xs),
                              itemCount: state.messages.length +
                                  (state.isLoadingMore ? 1 : 0),
                              itemBuilder: (context, index) {
                                if (index == 0 && state.isLoadingMore) {
                                  return const Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Center(
                                      child: CircularProgressIndicator(
                                        color: AppColors.primaryWhite,
                                      ),
                                    ),
                                  );
                                }

                                final messageIndex =
                                    state.isLoadingMore ? index - 1 : index;
                                final message = state.messages[messageIndex];
                                final isUserMessage =
                                    message.authorType == 'User';

                                return KeyedSubtree(
                                  key: ValueKey(
                                    message.messageId ??
                                        '${message.messageDate?.
                                        millisecondsSinceEpoch}-'
                                            '${message.message}',
                                  ),
                                  child: ChatBubble(
                                    message: message.message ?? '',
                                    isUserMessage: isUserMessage,
                                    userName: isUserMessage
                                        ? userName
                                        : context.strings.chatBotName,
                                    aiThinking: message.aiThinking,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        BlocBuilder<ChatbotScreenBloc, ChatbotScreenState>(
                          builder: (context, chatState) {
                            return Column(
                              children: [
                                if (chatState.canProgressToNext)
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: Spacing.xs,
                                      right: Spacing.xs,
                                      bottom: Spacing.xl,
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            AppColors.accentLightPurpleBlue,
                                            AppColors.accentPurpleBlue,
                                          ],
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25),),
                                      ),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          _handleProgression(
                                              context, chatState.currentStage,);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          shadowColor: Colors.transparent,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25),),
                                          ),
                                        ),
                                        child: Text(
                                          _getProgressButtonTextForStage(
                                              context, chatState.currentStage,),
                                          style:
                                              AppStyles.text16pxBold.copyWith(
                                            color: AppColors.primaryWhite,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                else
                                  const HomePageDynamicBottomTextField(),
                              ],
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
      },
    );
  }
}

class HomePageDynamicBottomTextField extends StatefulWidget {
  const HomePageDynamicBottomTextField({super.key});

  @override
  State<HomePageDynamicBottomTextField> createState() =>
      _HomePageDynamicBottomTextFieldState();
}

class _HomePageDynamicBottomTextFieldState
    extends State<HomePageDynamicBottomTextField>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: const Duration(milliseconds: 150),
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      curve: Curves.easeOut,
      child: const Align(
        alignment: Alignment.bottomCenter,
        child: ExpandingInputContainer(),
      ),
    );
  }
}

class ExpandingInputContainer extends StatefulWidget {
  const ExpandingInputContainer({super.key});

  @override
  State<ExpandingInputContainer> createState() =>
      _ExpandingInputContainerState();
}

class _ExpandingInputContainerState extends State<ExpandingInputContainer> {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<ChatbotScreenBloc, ChatbotScreenState>(
        builder: (context, state) {
          return Container(
            decoration: const BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: state.baseHeight,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: ExpandingTextInput(
                          text: state.text,
                          onLineChanged: (count) => context
                              .read<ChatbotScreenBloc>()
                              .add(ChatbotScreenEvent.onChangeLineCount(count)),
                        ),
                      ),
                      if(state.text.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          transitionBuilder: (child, animation) {
                            return ScaleTransition(
                              scale: animation,
                              child: FadeTransition(
                                opacity: animation,
                                child: child,
                              ),
                            );
                          },
                          child: GestureDetector(
                            onTap: () => context.read<ChatbotScreenBloc>().add(
                                ChatbotScreenEvent.onSendMessage(state.text),),
                            child: Container(
                              key: const ValueKey('visible-button'),
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: const Color(0xFF595959)
                                      .withValues(alpha: 0.7),
                                ),
                              ),

                              child: Center(
                                child: SvgPicture.asset(
                                  AppIcons.svgArrowForrward,
                                  width: 20,
                                  height: 20,
                                  colorFilter: const
                                  ColorFilter.linearToSrgbGamma(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).padding.bottom,
                  color: AppColors.primary,
                ),
              ],
            ),
          );
        },
      );
}

class ExpandingTextInput extends StatefulWidget {

  const ExpandingTextInput({
    required this.onLineChanged,
    required this.text, super.key,
  });
  final ValueChanged<int> onLineChanged;
  final String text;

  @override
  State<ExpandingTextInput> createState() => _ExpandingTextInputState();
}

class _ExpandingTextInputState extends State<ExpandingTextInput> {
  final TextEditingController _controller = TextEditingController();
  int _previousLineCount = 1;
  final GlobalKey _textFieldKey = GlobalKey();
  TextPainter? _textPainter;

  @override
  void initState() {
    super.initState();
    _controller.text = widget.text;
    _setupTextPainter();
    _controller.addListener(_onTextChanged);
  }

  void _setupTextPainter() {
    _textPainter = TextPainter(
      textDirection: TextDirection.ltr,
    );
  }

  void _onTextChanged() {
    _checkLineCount();
  }

  @override
  void didUpdateWidget(covariant ExpandingTextInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.text != widget.text) {
      _controller.text = widget.text;
    }
  }

  void _checkLineCount() {
    final renderBox =
        _textFieldKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox == null) return;

    final width = renderBox.size.width;
    if (width <= 0) return;

    final textSpan = TextSpan(
      text: _controller.text,
      style: AppStyles.text16pxMedium,
    );

    _textPainter?.text = textSpan;

    const horizontalPadding = 20.0 * 2;
    _textPainter?.layout(maxWidth: width - horizontalPadding - 25);

    final height = _textPainter?.size.height ?? 0;
    final preferredLineHeight = _textPainter?.preferredLineHeight ?? 1;
    final currentLineCount = (height / preferredLineHeight).ceil();

    if (currentLineCount != _previousLineCount) {
      _previousLineCount = currentLineCount;
      widget.onLineChanged(currentLineCount);
    }
  }

  @override
  void dispose() {
    _controller..removeListener(_onTextChanged)
    ..dispose();
    _textPainter?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          key: _textFieldKey,
          child: TextField(
            controller: _controller,
            minLines: 1,
            maxLines: null,
            onChanged: (text) => context
                .read<ChatbotScreenBloc>()
                .add(ChatbotScreenEvent.onChangeText(text)),
            cursorColor: AppColors.white,
            style: AppStyles.text16pxMedium.copyWith(color: AppColors.white),
            decoration: InputDecoration(
              hintText: context.strings.chatReply,
              hintStyle:
                  AppStyles.text16pxMedium.copyWith(color:
                  const Color(0xFF91949A),),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        );
      },
    );
  }
}
