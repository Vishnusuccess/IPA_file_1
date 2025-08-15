import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trueme/core/navigation/router.dart';
import 'package:trueme/core/presentation/global_snack_bar/global_snack_bar.dart';
import 'package:trueme/features/authorization/authorization_bloc.dart';
import 'package:trueme/features/login/bloc/login_screen_bloc.dart';

class LoginEventsListener extends StatelessWidget {
  const LoginEventsListener({
    required this.child,
    super.key,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) =>
      BlocListener<LoginScreenBloc, LoginScreenState>(
        listener: (context, state) => state.loginEvent.when(
          idle: () => null,
          showAuthError: (error) => GlobalSnackbar.show(error.message),
          onPopSign: () => context.router.maybePop(),
          onNavigateToSplash: () {
            context
                .read<AuthorizationBloc>()
                .add(const AuthorizationEvent.onLogin());
            context.router.push(const SplashRoute());
            return null;
          },
        ),
        child: child,
      );
}
