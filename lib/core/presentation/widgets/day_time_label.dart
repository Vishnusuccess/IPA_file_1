import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trueme/core/design/design.dart';

class DayTimeLabel extends StatelessWidget {
  const DayTimeLabel({
    required this.dayTimeText,
    this.isCompleted = false,
    super.key,
  });

  final String dayTimeText;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) => Container(
        padding: isCompleted
            ? const EdgeInsets.symmetric(horizontal: 8, vertical: 4)
            : EdgeInsets.zero,
        decoration: isCompleted
            ? BoxDecoration(
                color: AppColors.accentLightPurpleBlue.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: AppColors.accentLightPurpleBlue.withValues(alpha: 0.3),
                ),
              )
            : null,
        child: Text(
          dayTimeText,
          style: AppStyles.text13pxSemibold.copyWith(
            color:
                isCompleted ? AppColors.primaryWhite : AppColors.primaryGrey3,
            fontWeight: isCompleted ? FontWeight.w700 : FontWeight.w600,
          ),
        ),
      );
}
