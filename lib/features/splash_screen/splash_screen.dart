// program_progress_screen.dart
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trueme/core/design/design.dart';
import 'package:trueme/core/l10n/l10n.dart';
import 'package:trueme/core/presentation/base_button/gradient_button.dart';
import 'package:trueme/core/presentation/base_scaffold/base_scaffold.dart';
import 'package:trueme/core/service_locator/service_locater.dart';
import 'package:trueme/features/splash_screen/bloc/splash_screen_bloc.dart';
import 'package:trueme/features/splash_screen/event_listener/splash_listener.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SplashScreenBloc>()
        ..add(
          const SplashScreenEvent.onInit(),
        ),
      child: const SplashEventListener(
        child: BaseScaffold(
          backgorundColor: AppColors.primaryBlack,
          body: _Body(),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SplashScreenBloc, SplashScreenState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/logo/logo.png'),
                  const CircularProgressIndicator(
                    color: AppColors.accentLightPurpleBlue,
                  ),
                ],
              ),
            );
          }
          if (state.isError) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 80),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      context.strings.errorSomethingWrong,
                      style: AppStyles.subtitleMedium.copyWith(
                        color: AppColors.primaryGrey3,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Text(
                      context.strings.errorWeAreHere,
                      style: AppStyles.subtitleMedium.copyWith(
                        color: AppColors.primaryWhite,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    GradientButton(
                      isLoading: state.isLoading,
                      text: context.strings.buttonTryAgain,
                      onPressed: () => context
                          .read<SplashScreenBloc>()
                          .add(const SplashScreenEvent.onClickTryAgainButton()),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () => context.read<SplashScreenBloc>().add(
                          const SplashScreenEvent
                              .onClickContactSupportButton(),),
                      child: Text(
                        context.strings.settingsContactSupport,
                        style: AppStyles.text16pxMedium.copyWith(
                          color: AppColors.accentLightPurpleBlue,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        InkWell(
                          onTap: () => context.read<SplashScreenBloc>().add(
                              const SplashScreenEvent.onClickLogoutButton(),),
                          child: Text(
                            context.strings.logoutButtonText,
                            style: AppStyles.text16pxMedium.copyWith(
                              color: AppColors.accentLightPurpleBlue,
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ],
                ),
              ],
            );
          }
          return const Scaffold(
            backgroundColor: AppColors.primaryBlack,
            body: SizedBox.shrink(),
          );
        },
      );
}
