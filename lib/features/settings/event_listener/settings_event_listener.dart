import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trueme/core/l10n/l10n.dart';
import 'package:trueme/core/navigation/router.dart';
import 'package:trueme/core/presentation/global_snack_bar/global_snack_bar.dart';
import 'package:trueme/features/settings/bloc/settings_bloc.dart';

class SettingsEventListener extends StatelessWidget {
  const SettingsEventListener({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsBloc, SettingsState>(
      listener: (context, state) => state.settingStateEvent.when<void>(
        idle: () {},
        onDeleteAccount: () {
          GlobalSnackbar.show(context.strings.deletedAccountMessage);
          context.router.replace(const LoginRoute());
        },
        onLogout: () {
          context.router.replace(const LoginRoute());
        },
      ),

      child: child,
    );
  }
}
