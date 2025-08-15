import 'package:flutter/material.dart';
import 'package:trueme/core/design/design.dart';

const double _progressBarHeight = 6;
const double _spacing = 5;
const int _itemsPerRow = 10;
const double _barWidth = 47;

class AppProgress extends StatelessWidget {
  const AppProgress({
    required this.completedSteps,
    required this.allSteps,
    super.key,
  });

  final int completedSteps;
  final int allSteps;

  @override
  Widget build(BuildContext context) {
    final stagesCount =
        (allSteps / 3).ceil(); // <-- automatyczne liczenie stage'y
    final rowCount = (stagesCount / _itemsPerRow).ceil();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(rowCount, (rowIndex) {
        final start = rowIndex * _itemsPerRow;
        final end = (start + _itemsPerRow).clamp(0, stagesCount);
        final itemCount = end - start;

        return Padding(
          padding:
              EdgeInsets.only(bottom: rowIndex != rowCount - 1 ? _spacing : 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(itemCount, (index) {
              final stageIndex = start + index;
              final stageStartStep = stageIndex * 3;
              final progress =
                  ((completedSteps - stageStartStep) / 3).clamp(0.0, 1.0);

              return Padding(
                padding: EdgeInsets.only(
                    right: index != itemCount - 1 ? _spacing : 0,),
                child: _SubProgress(
                  progress: progress,
                  width: _barWidth,
                ),
              );
            }),
          ),
        );
      }),
    );
  }
}

class _SubProgress extends StatelessWidget {
  const _SubProgress({required this.progress, required this.width});

  final double progress;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: _progressBarHeight,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(BorderRadiusSize.s),
        child: Stack(
          children: [
            Container(
              color: AppColors.primaryGrey6, // Tło
            ),
            FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: progress, // Postęp (0.0 - 1.0)
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.accentPurpleBlue,
                      AppColors.accentPurpleBlue.withValues(alpha: 0.6),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
