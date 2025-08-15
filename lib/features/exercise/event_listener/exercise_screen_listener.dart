import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trueme/core/navigation/router.dart';
import 'package:trueme/core/presentation/global_snack_bar/global_snack_bar.dart';
import 'package:trueme/features/chatbot/utils/chatbot_utils.dart';
import 'package:trueme/features/exercise/bloc/exercise_page_bloc.dart';

class ExerciseScreenEventListener extends StatelessWidget {
  const ExerciseScreenEventListener({
    required this.child,
    super.key,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) =>
      BlocListener<ExercisePageBloc, ExercisePageState>(
        listener: (context, state) => state.exercisePageEvent.when(
          idle: () => null,
          showError: (error) => GlobalSnackbar.show(error.message.first),
          onSuccessGetExercise: () =>
              context.router.replace(const SplashRoute()),
          onSuccessSubmitEmotions: (String message) {
            context.router.push(
              ChatRoute(
                chatbotRouteParams: ChatbotRouteParams(
                  chatEndpointUtils: ChatEndpointUtils.init,
                  initialMessage: message,
                  skipInit:
                      true, // Skip calling chat/init since we have the message
                ),
              ),
            );
            return null;
          },
        ),
        child: child,
      );
}
