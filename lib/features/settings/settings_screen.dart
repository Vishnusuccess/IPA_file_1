import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trueme/core/design/design.dart';
import 'package:trueme/core/l10n/l10n.dart';
import 'package:trueme/core/logger/logger.dart';
import 'package:trueme/core/presentation/base_scaffold/base_scaffold.dart';
import 'package:trueme/core/service_locator/service_locater.dart';
import 'package:trueme/core/services/onboarding_service.dart';
import 'package:trueme/features/settings/bloc/settings_bloc.dart';
import 'package:trueme/features/settings/event_listener/settings_event_listener.dart';
import 'package:trueme/features/settings/widgets/language_switcher.dart';
import 'package:trueme/features/settings/widgets/settings_list_tile.dart';
import 'package:trueme/flavors.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingsBloc>(
      create: (_) => getIt<SettingsBloc>()..add(const SettingsEvent.onInit()),
      child: const _SettingsScreenContent(),
    );
  }
}

class _SettingsScreenContent extends StatefulWidget {
  const _SettingsScreenContent();

  @override
  State<_SettingsScreenContent> createState() => __SettingsScreenContentState();
}

class __SettingsScreenContentState extends State<_SettingsScreenContent> {
  final termsAndConditionsUrl = 'https://trueme.space/terms-of-service';
  final privacyPolicyUrl = 'https://trueme.space/privacy';

  Future<void> _showDeleteAccountDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) => BlocProvider<SettingsBloc>(
        create: (_) => getIt<SettingsBloc>(),
        child: AlertDialog(
          backgroundColor: AppColors.primaryBlack,
          title: Text(
            context.strings.deleteAccountConfirmationTitle,
            style:
                AppStyles.subtitleBold.copyWith(color: AppColors.primaryWhite),
          ),
          content: Text(
            context.strings.deleteAccountConfirmationMessage,
            style: AppStyles.text16pxRegular
                .copyWith(color: AppColors.primaryWhite),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                context.strings.deleteAccountCancelButton,
                style: const TextStyle(color: AppColors.accentVeryLightPurple),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(
                context.strings.deleteAccountConfirmButton,
                style: const TextStyle(color: AppColors.accentVeryLightPurple),
              ),
              onPressed: () => context
                  .read<SettingsBloc>()
                  .add(const SettingsEvent.onDeleteUser()),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _openUrl(String url) async {
    // Capture from context BEFORE any await
    final messenger = ScaffoldMessenger.of(context);
    final strings = context.strings;

    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      messenger.showSnackBar(
        SnackBar(
          content: Text(
            strings.errorCouldNotOpenLink,
            style: const TextStyle(color: AppColors.primaryWhite),
          ),
          backgroundColor: AppColors.primaryBlack,
        ),
      );
    }
  }


  @override
  Widget build(BuildContext context) => BaseScaffold(
        backgorundColor: AppColors.primaryBlack,
        body: SafeArea(
          child: SettingsEventListener(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => context.router.maybePop(),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: const Icon(
                            Icons.close,
                            color: AppColors.primaryWhite,
                            size: 24,
                          ),
                        ),
                      ),
                      Text(
                        context.strings.settingsScreenTitle,
                        style: AppStyles.text16pxBold.copyWith(
                          color: AppColors.primaryWhite,
                        ),
                      ),
                      const SizedBox(width: 40), // Balance the close button
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ListView(
                      children: [
                        SettingListTile(
                          title: context.strings.settingsProfile,
                          children: [
                            BlocBuilder<SettingsBloc, SettingsState>(
                              builder: (context, state) {
                                if (state.userId.isNotEmpty) {
                                  return Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'User ID:',
                                          style:
                                              AppStyles.text16pxBold.copyWith(
                                            color: AppColors.primaryWhite,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          state.userId,
                                          style: AppStyles.text16pxRegular
                                              .copyWith(
                                            color: AppColors.primaryWhite,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                                return const SizedBox.shrink();
                              },
                            ),
                            InkWell(
                              onTap: () => _showDeleteAccountDialog(context),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  context.strings.settingsDeleteAccount,
                                  style: AppStyles.text16pxRegular.copyWith(
                                    color: const Color(0xFFFF3A3A),
                                    decoration: TextDecoration.underline,
                                    decorationColor: const Color(0xFFFF3A3A),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        SettingListTile(
                          title: context.strings.languageSettings,
                          children: const [
                            LanguageSwitcher(),
                          ],
                        ),
                        const SizedBox(height: 10),
                        SettingListTile(
                          title: context.strings.settingsAgreements,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  context.strings.agreementsInfo,
                                  style: AppStyles.text16pxRegular.copyWith(
                                    color: AppColors.primaryWhite,
                                  ),
                                ),
                                const SizedBox(height: Spacing.xs),
                                InkWell(
                                  onTap: () => _openUrl(termsAndConditionsUrl),
                                  child: Text(
                                    context.strings.termsAndConditions,
                                    style: AppStyles.text16pxRegular.copyWith(
                                      color: AppColors.accentVeryLightPurple,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: Spacing.xs),
                                InkWell(
                                  onTap: () => _openUrl(privacyPolicyUrl),
                                  child: Text(
                                    context.strings.privacyPolicy,
                                    style: AppStyles.text16pxRegular.copyWith(
                                      color: AppColors.accentVeryLightPurple,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        SettingListTile(
                          title: context.strings.settingsHelp,
                          children: [
                            InkWell(
                              onTap: () => _showDeleteAccountDialog(context),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: InkWell(
                                  onTap: () async {
                                    final emailLaunchUri = Uri(
                                      scheme: 'mailto',
                                      path: 'hello@trueme.space',
                                    );

                                    if (await canLaunchUrl(emailLaunchUri)) {
                                      await launchUrl(emailLaunchUri);
                                    } else {
                                      AppLogger.dev("Can't open email app.");
                                    }
                                  },
                                  child: Text(
                                    context.strings.settingsContactSupport,
                                    style: AppStyles.text16pxMedium.copyWith(
                                      color: AppColors.accentLightPurpleBlue,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (F.isDev) ...[
                          const SizedBox(height: 10),
                          SettingListTile(
                            title: context.strings.settingsTester,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  ElevatedButton(
                                    onPressed: () async {
                                      final messenger
                                      = ScaffoldMessenger.of(context);
                                      final strings = context.strings;
                                      final onboardingService =
                                          getIt<OnboardingService>();
                                      await onboardingService
                                          .clearOnboardingState();
                                      messenger.showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            strings.successOnboardingCleared,

                                            style: const TextStyle(
                                                color: AppColors.primaryWhite,),
                                          ),
                                          backgroundColor:
                                              AppColors.primaryGrey7,
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          AppColors.accentLightPurpleBlue,
                                      foregroundColor: AppColors.primaryWhite,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12,),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: Text(
                                      context.strings
                                          .settingsCleanOnboardingDismiss,
                                      style: AppStyles.text16pxMedium.copyWith(
                                        color: AppColors.primaryWhite,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  ElevatedButton(
                                    onPressed: () async {
                                      final strings = context.strings;
                                      final messenger =
                                      ScaffoldMessenger.of(context);
                                      final onboardingService =
                                          getIt<OnboardingService>();
                                      await onboardingService
                                          .markOnboardingCompleted();
                                      messenger.showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            strings.successOnboardingCompleted,
                                            style: const TextStyle(
                                                color: AppColors.primaryWhite,),
                                          ),
                                          backgroundColor:
                                              AppColors.primaryGrey7,
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          AppColors.accentVeryLightPurple,
                                      foregroundColor: AppColors.primaryBlack,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12,),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: Text(
                                      context.strings
                                          .settingsMarkOnboardingCompleted,
                                      style: AppStyles.text16pxMedium.copyWith(
                                        color: AppColors.primaryBlack,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      BlocBuilder<SettingsBloc, SettingsState>(
                        builder: (context, state) {
                          if (state.version.isEmpty) {
                            return const SizedBox.shrink();
                          }
                          return Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  state.version,
                                  style: AppStyles.text13pxRegular.copyWith(
                                    color: AppColors.primaryGrey4,
                                  ),
                                ),
                                if (F.isDev)
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        state.trueMeEnvDisplay,
                                        style:
                                            AppStyles.text13pxRegular.copyWith(
                                          color: AppColors.primaryGrey4,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 200,
                                        child: Text(
                                          state.trueMeEndpointUrl,
                                          style: AppStyles.text11pxRegular
                                              .copyWith(
                                            color: AppColors.primaryGrey4,
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                      ),
                                    ],
                                  )
                                else
                                  Text(
                                    state.trueMeEnvDisplay,
                                    style: AppStyles.text13pxRegular.copyWith(
                                      color: AppColors.primaryGrey4,
                                    ),
                                  ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
