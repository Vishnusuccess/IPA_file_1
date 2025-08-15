import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trueme/core/navigation/router.dart';
import 'package:trueme/features/chatbot/bloc/chatbot_screen_bloc.dart';
import 'package:trueme/features/chatbot/utils/stage_flow_manager.dart';

class ChatScreenEventListener extends StatelessWidget {
  const ChatScreenEventListener({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatbotScreenBloc, ChatbotScreenState>(
      listener: (context, state) => state.chatbotScreenEvent.when(
        idle: () => null,
        onMoveToSplashScreen: () => context.router.replace(const SplashRoute()),
        onNavigateToStage: (stage) => StageFlowManager.navigateBasedOnStage(
          context,
          stage: stage,
          // You can pass additional parameters here if needed
          // programId: state.programId,
          // programProgressId: state.programProgressId,
        ),
      ),
      child: child,
    );
  }
}
