import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:trueme/core/blocs/language_bloc.dart';
import 'package:trueme/core/design/design.dart';
import 'package:trueme/core/l10n/l10n.dart';
import 'package:trueme/core/navigation/mixpanel_route_observer.dart';
import 'package:trueme/core/navigation/router.dart';
import 'package:trueme/core/presentation/global_snack_bar/global_snack_bar.dart';
import 'package:trueme/core/service_locator/service_locater.dart';
import 'package:trueme/features/authorization/authorization_bloc.dart';
import 'package:trueme/features/authorization/authorization_event_listener/authorization_event_listener.dart';
import 'package:trueme/features/user/cubit/user_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt.get<AuthorizationBloc>(),
        ),
        BlocProvider<UserCubit>(
          create: (_) => getIt<UserCubit>(),
        ),
        BlocProvider(
          create: (context) =>
              getIt<LanguageBloc>()..add(const LanguageEvent.initialize()),
        ),
      ],
      child: AuthorizationEventListener(
        child: BlocBuilder<LanguageBloc, LanguageState>(
          builder: (context, languageState) {
            return MaterialApp.router(
              scaffoldMessengerKey: GlobalSnackbar.scaffoldMessengerKey,
              debugShowCheckedModeBanner: false,
              routerDelegate: context.router.delegate(
                navigatorObservers: () => [
                  MixpanelRouteObserver(),
                ],
              ),
              routeInformationParser: context.router.defaultRouteParser(),
              theme: AppTheme.lightTheme,
              locale: languageState.locale,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: AppLocalizations.supportedLocales,
            );
          },
        ),
      ),
    );
  }
}
