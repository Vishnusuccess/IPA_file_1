import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trueme/core/navigation/router.dart';
import 'package:trueme/features/menu/bloc/menu_screen_bloc.dart';

class MenuScreenEventListener extends StatelessWidget {

  const MenuScreenEventListener({
    required this.child,
    super.key,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<MenuScreenBloc, MenuScreenState>(
      listener: (context, state) {
        state.menuEventState.when(
          idle: () => null,
          loading: () => null,
          loaded: () => null,
          navigatingToSettings: () {
            context.router.push(const SettingsRoute());
            return null;
          },
          navigatingToChat: () {
            context.router.push(const ReportIssueRoute()); //close menu
            return null;
          },
          navigatingToEvents: () {
            context.router.canPop(); // Just close menu for now
            return null;
          },
          navigatingToPrograms: () {
            context.router.canPop(); // Just close menu for now
            return null;
          },
          error: (message) => null,
        );
      },
      child: child,
    );
  }
}
