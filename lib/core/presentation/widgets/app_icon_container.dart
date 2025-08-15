import 'package:flutter/material.dart';
import 'package:trueme/core/design/design.dart';

const double size = 56;

class AppIconContainer extends StatelessWidget {
  const AppIconContainer({
    required this.iconPath,
    super.key,
  });

  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: const Color(0xFF1F1F1F),
        borderRadius: BorderRadius.circular(Spacing.s),
        border: Border.all(
          color: const Color(0xFF2B2E32),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Image.asset(
          iconPath,
          fit: BoxFit.contain,
          color: AppColors.accentPurpleBlue,
        ),
      ),
    );
  }
}
