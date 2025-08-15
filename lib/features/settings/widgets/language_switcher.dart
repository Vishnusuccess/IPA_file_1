import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trueme/core/blocs/language_bloc.dart';
import 'package:trueme/core/design/design.dart';
import 'package:trueme/core/l10n/l10n.dart';
import 'package:trueme/core/navigation/router.gr.dart';
import 'package:trueme/core/services/language_service.dart';

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocListener<LanguageBloc, LanguageState>(
        listener: (context, state) {
          if (!state.isLoading && state.errorMessage == null) {
            context.router.push(
              const LanguageSuccessRoute(),
            );
          }

          if (!state.isLoading && state.errorMessage != null) {
            context.router.push(
              LanguageErrorRoute(
                onTryAgain: () => context.router.canPop(),
              ),
            );
          }
        },
        child: BlocBuilder<LanguageBloc, LanguageState>(
          builder: (context, languageState) {
            final currentLanguage =
                AppLanguage.fromCode(languageState.locale.languageCode);

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (languageState.isLoading)
                  const SizedBox(
                    height: 60,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: Spacing.s),
                      child: Center(
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                      ),
                    ),
                  )
                else if (languageState.errorMessage != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: Spacing.s),
                    child: Container(
                      padding: const EdgeInsets.all(Spacing.s),
                      decoration: BoxDecoration(
                        color: AppColors.primaryGrey1,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppColors.primaryGrey4),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.error_outline,
                              color: AppColors.primaryGrey5, size: 16,),
                          const SizedBox(width: Spacing.xs),
                          Expanded(
                            child: Text(
                              languageState.errorMessage!,
                              style: AppStyles.text13pxRegular.copyWith(
                                color: AppColors.primaryGrey5,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => context
                                .read<LanguageBloc>()
                                .add(const LanguageEvent.clearError()),
                            child: const Icon(Icons.close,
                                color: AppColors.primaryGrey5, size: 16,),
                          ),
                        ],
                      ),
                    ),
                  ),
                if (languageState.isLoading == false)
                  Row(
                    children: [
                      Expanded(
                        child: _LanguageOption(
                          language: AppLanguage.english,
                          currentLanguage: currentLanguage,
                          title: context.strings.languageEnglish,
                          onTap: () =>
                              _onLanguageChanged(context, AppLanguage.english),
                          isDisabled: languageState.isLoading,
                        ),
                      ),
                      const SizedBox(width: Spacing.s),
                      Expanded(
                        child: _LanguageOption(
                          language: AppLanguage.polish,
                          currentLanguage: currentLanguage,
                          title: context.strings.languagePolish,
                          onTap: () =>
                              _onLanguageChanged(context, AppLanguage.polish),
                          isDisabled: languageState.isLoading,
                        ),
                      ),
                    ],
                  ),
              ],
            );
          },
        ),
      );

  void _onLanguageChanged(BuildContext context, AppLanguage language) {
    context.read<LanguageBloc>().add(LanguageEvent.changeLanguage(language));
  }
}

class _LanguageOption extends StatelessWidget {
  const _LanguageOption({
    required this.language,
    required this.currentLanguage,
    required this.title,
    required this.onTap,
    required this.isDisabled,
  });

  final AppLanguage language;
  final AppLanguage currentLanguage;
  final String title;
  final VoidCallback onTap;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    final isSelected = language == currentLanguage;

    return GestureDetector(
      onTap: isDisabled ? null : onTap,
      child: Opacity(
        opacity: isDisabled ? 0.5 : 1.0,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: Spacing.m,
            vertical: Spacing.s,
          ),
          decoration: BoxDecoration(
            color: isSelected
                ? AppColors.accentVeryLightPurple
                : AppColors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isSelected
                  ? AppColors.accentVeryLightPurple
                  : AppColors.primaryGrey4,
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: AppStyles.text16pxRegular.copyWith(
                color: isSelected
                    ? AppColors.primaryBlack
                    : AppColors.primaryWhite,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
