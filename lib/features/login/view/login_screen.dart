import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trueme/core/design/app_colors.dart';
import 'package:trueme/core/design/app_dimens.dart';
import 'package:trueme/core/design/app_styles.dart';
import 'package:trueme/core/l10n/l10n.dart';
import 'package:trueme/core/presentation/base_scaffold/base_scaffold.dart';
import 'package:trueme/core/service_locator/service_locater.dart';
import 'package:trueme/features/login/bloc/login_screen_bloc.dart';
import 'package:trueme/features/login/event_listener/login_event_listener.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => getIt<LoginScreenBloc>(),
        child: const LoginEventsListener(
          child: BaseScaffold(
            backgroundImage: 'assets/png/login_screen_background.png',
            body: _Body(),
          ),
        ),
      );
}

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Spacing.m),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 120),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: '${context.strings.loginWelcomeReady} \n',
                style: AppStyles.subtitle19pxMedium.copyWith(
                  color: AppColors.primaryGrey3,
                ),
                children: [
                  TextSpan(
                    text: '${context.strings.loginWelcomeBegin} \n',
                    style: AppStyles.subtitle19pxMedium.copyWith(
                      color: AppColors.primaryWhite,
                    ),
                  ),
                  TextSpan(
                    text: context.strings.loginWelcomeJourney,
                    style: AppStyles.subtitle19pxMedium.copyWith(
                      color: AppColors.primaryWhite,
                    ),
                  ),
                ],),
          ),
          const SizedBox(height: 100),
          BlocBuilder<LoginScreenBloc, LoginScreenState>(
            builder: (context, state) => const _OnLoginSection(),
          ),
        ],
      ),
    );
  }
}

class _OnLoginSection extends StatelessWidget {
  const _OnLoginSection();

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<LoginScreenBloc, LoginScreenState>(
        builder: (context, state) {
          return Column(
            children: [
              const SizedBox(height: 120),
              Column(
                children: [
                  GestureDetector(
                    onTap: state.isSubmitLoadingMail
                        ? null
                        : () => context
                            .read<LoginScreenBloc>()
                            .add(const LoginScreenEvent.onMailSignIn()),
                    child: Container(
                      width: double.infinity,
                      height: 54,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: state.isSubmitLoadingMail
                              ? [
                                const Color(0xFF6962F2).withValues(alpha: 0.7),
                            const Color(0xFF6962F2).withValues(alpha: 0.7),
                          ]
                              : [
                                  const Color(0xFF6962F2),
                                  const Color(0xFF5851EC),
                                ],
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: state.isSubmitLoadingMail
                          ? const Center(
                              child: SizedBox(
                                height: 24,
                                width: 24,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.white,),
                                  strokeWidth: 2.5,
                                ),
                              ),
                            )
                          : Center(
                              child: Text(
                                context.strings.loginLogInSignUp,
                                style: AppStyles.text16pxMedium
                                    .copyWith(color: AppColors.primaryWhite),
                                textScaler: TextScaler.noScaling,
                              ),
                            ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          endIndent: 10,
                          color: AppColors.white,
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          context.strings.loginOr,
                          style: AppStyles.subtitle19pxMedium
                              .copyWith(color: AppColors.white),
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          indent: 10,
                          color: Colors.white,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: state.isSubmitLoadingGoogle
                        ? null
                        : () => context
                            .read<LoginScreenBloc>()
                            .add(const LoginScreenEvent.onGoogleSignIn()),
                    child: Container(
                      width: double.infinity,
                      height: 54,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: state.isSubmitLoadingGoogle
                          ? const Center(
                              child: SizedBox(
                                height: 24,
                                width: 24,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.black,),
                                  strokeWidth: 2.5,
                                ),
                              ),
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/svg/login_google_logo.svg',
                                  width: 25,
                                  height: 25,
                                ),
                                const SizedBox(width: 15),
                                Text(
                                  context.strings.loginContinueGoogle,
                                  style: AppStyles.text16pxMedium
                                      .copyWith(color: AppColors.primaryBlack),
                                  textScaler: TextScaler.noScaling,
                                ),
                              ],
                            ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  if (Platform.isIOS)
                    GestureDetector(
                      onTap: state.isSubmitLoadingApple
                          ? null
                          : () => context
                              .read<LoginScreenBloc>()
                              .add(const LoginScreenEvent.onAppleSignIn()),
                      child: Container(
                        width: double.infinity,
                        height: 54,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: state.isSubmitLoadingApple
                            ? const Center(
                                child: SizedBox(
                                  height: 24,
                                  width: 24,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.black,),
                                    strokeWidth: 2.5,
                                  ),
                                ),
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/svg/apple_icon.svg',
                                    width: 25,
                                    height: 25,
                                    colorFilter: const ColorFilter.mode(
                                      AppColors.primaryBlack,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Text(
                                    context.strings.loginContinueApple,
                                    style: AppStyles.text16pxMedium.copyWith(
                                        color: AppColors.primaryBlack,),
                                    textScaler: TextScaler.noScaling,
                                  ),
                                ],
                              ),
                      ),
                    ),
                  const SizedBox(height: 60),
                ],
              ),
            ],
          );
        },
      );
}
