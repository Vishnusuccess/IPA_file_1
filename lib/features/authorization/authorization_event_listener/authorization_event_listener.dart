import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trueme/core/navigation/router.dart';
import 'package:trueme/features/authorization/authorization_bloc.dart';

class AuthorizationEventListener extends StatelessWidget {
  const AuthorizationEventListener({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthorizationBloc, AuthorizationState>(
      listenWhen: when,
      listener: (context, state) {
        // Capture router synchronously
        // so we don't touch `context` after any await.
        final router = context.router;
        if (state.forceUpdate) {
          // No await -> no async gap -> no lint.
          router.replace(const ForceUpdateRoute());
          return; // ensure we don't also navigate to Login.
        }

        if (!state.isLoggedIn) {
          router.replace(const LoginRoute());
        }
      },
      child: child,
    );
  }

  bool when(AuthorizationState previous, AuthorizationState next) =>
      previous.isLoggedIn != next.isLoggedIn ||
          previous.forceUpdate != next.forceUpdate;
}
