import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trueme/core/navigation/router.dart';
import 'package:trueme/features/chatbot/data/models/chat_stage_response_model.dart';
import 'package:trueme/features/chatbot/utils/stage_flow_manager.dart';
import 'package:trueme/features/splash_screen/bloc/splash_screen_bloc.dart';

class SplashEventListener extends StatelessWidget {
  const SplashEventListener({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashScreenBloc, SplashScreenState>(
      listener: (context, state) {
        state.splashScreenEvent.when(
          onMoveToLoginPage: () {
            context.router.replace(const LoginRoute());
          },
          onMoveToChatPage: () {
            context.router.replace(ChatRoute());
          },
          onNavigateToStage: (stageStr) {
            if (stageStr == 'periodic_checkin_emotion') {
              context.router.replace(const ExerciseRoute());
              return;
            }
            StageFlowManager.navigateBasedOnStage(
              context,
              stage: ChatStage.fromString(stageStr),
              clearStack: true,
            );
          },
          idle: () {},
        );
      },
      child: child,
    );
  }
}
