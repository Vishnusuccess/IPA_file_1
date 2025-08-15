import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trueme/core/design/app_colors.dart';
import 'package:trueme/core/design/app_styles.dart';
import 'package:trueme/core/l10n/l10n.dart';
import 'package:trueme/core/presentation/base_scaffold/base_scaffold.dart';

@RoutePage()
class LanguageErrorPage extends StatelessWidget {
  const LanguageErrorPage({required this.onTryAgain, super.key});
  final VoidCallback onTryAgain;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      backgorundColor: AppColors.primaryBlack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 100),
            Text(
              context.strings.languageChangeError,
              style: AppStyles.text16pxMedium.copyWith(
                color: AppColors.white,
              ),
            ),
            const SizedBox(height: 40),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: GestureDetector(
                    onTap: onTryAgain,
                    child: Container(
                      width: double.infinity,
                      height: 54,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Color(0xFF6962F2), Color(0xFF5851EC)],
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          context.strings.buttonTryAgain,
                          style: AppStyles.text16pxMedium
                              .copyWith(color: AppColors.primaryWhite),
                          textScaler: const TextScaler.linear(1.1),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 100),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
