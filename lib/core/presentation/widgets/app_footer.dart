import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trueme/core/design/design.dart';
import 'package:trueme/core/presentation/base_button/gradient_button.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({
    required this.buttonText,
    required this.onButtonPressed, this.text,
    this.child,
    super.key,
    this.isButtonDisabled = false,
  });

  final String? text;
  final String buttonText;
  final VoidCallback onButtonPressed;
  final Widget? child;
  final bool? isButtonDisabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Spacing.m),
      decoration: const BoxDecoration(
        color: AppColors.primaryGrey7,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(BorderRadiusSize.l),
          topRight: Radius.circular(BorderRadiusSize.l),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (text != null)
            Column(
              children: [
                Text(
                  text!,
                  style: AppStyles.text16pxMedium
                      .copyWith(color: AppColors.primaryWhite),
                ),
                const Gap(Spacing.m),
              ],
            ),
          SizedBox(
            width: double.infinity,
            child: Opacity(
              opacity: isButtonDisabled ?? false ? 0.3 : 1,
              child: GradientButton(
                text: buttonText,
                onPressed:
                    isButtonDisabled ?? false ? () {} : onButtonPressed,
              ),
            ),
          ),
          if (child != null) ...[
            const Gap(Spacing.s),
            child!,
            const Gap(Spacing.m),
          ],
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
