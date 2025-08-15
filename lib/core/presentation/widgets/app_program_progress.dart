import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:trueme/core/design/design.dart';
import 'package:trueme/core/l10n/l10n.dart';
import 'package:trueme/core/presentation/widgets/widgets.dart';
import 'package:trueme/features/exercise/bloc/exercise_page_bloc.dart';

class AppProgressProgram extends StatefulWidget {
  const AppProgressProgram({
    required this.dayTime,
    required this.completedSteps,
    required this.daysLeft,
    required this.allSteps,
    this.targetTime,
    this.dayTimeLabelKey,
    this.nextCheckInKey,
    this.showcaseActive = false,
    this.currentShowcaseKey,
    this.onToolTipClick,
    this.isCompleted = false,
    super.key,
  });

  final String dayTime;
  final int completedSteps;
  final int allSteps;
  final int daysLeft;
  final DateTime? targetTime;
  final GlobalKey? dayTimeLabelKey;
  final GlobalKey? nextCheckInKey;
  final bool showcaseActive;
  final GlobalKey? currentShowcaseKey;
  final VoidCallback? onToolTipClick;
  final bool isCompleted;

  @override
  State<AppProgressProgram> createState() => _AppProgressProgramState();
}

class _AppProgressProgramState extends State<AppProgressProgram> {
  Timer? _timer;
  String _timeLeftText = '';

  @override
  void initState() {
    super.initState();
    _updateTimeLeft();
    _startTimer();
  }

  void _startTimer() {
    _timer =
        Timer.periodic(const Duration(seconds: 1), (_) => _updateTimeLeft());
  }

  void _updateTimeLeft() {
    if (widget.targetTime == null) {
      setState(() {
        _timeLeftText = 'Ready';
      });
      // Don't dispatch onTimerEnd when targetTime
      // is null - this causes infinite loop
      // context.read<ExercisePageBloc>().add(const
      // ExercisePageEvent.onTimerEnd());
      // print('onTimerEnd event dispatched');
      return;
    }

    final diff = widget.targetTime!.difference(DateTime.now());

    if (diff.isNegative || diff.inSeconds <= 0) {
      _timer?.cancel();
      setState(() {
        _timeLeftText = 'Ready';
      });
      context
          .read<ExercisePageBloc>()
          .add(const ExercisePageEvent.onTimerEnd());
      debugPrint('onTimerEnd event dispatched');
      return;
    }

    final hours = diff.inHours.toString().padLeft(2, '0');
    final minutes = (diff.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (diff.inSeconds % 60).toString().padLeft(2, '0');

    setState(() {
      _timeLeftText = '$hours:$minutes:$seconds';
    });
  }

  String _onlyTimeOrReadyText(BuildContext context) {
    if (_timeLeftText == 'Ready') {
      return context.strings.progressReady;
    }
    return _timeLeftText;
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryBlack,
        borderRadius: BorderRadius.circular(BorderRadiusSize.m),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (widget.dayTimeLabelKey != null) Showcase(
                      key: widget.dayTimeLabelKey!,
                      tooltipBackgroundColor: AppColors.primaryGrey7,
                      descTextStyle: AppStyles.text16pxRegular.copyWith(
                        color: AppColors.primaryWhite,
                      ),
                      tooltipBorderRadius:
                          BorderRadius.circular(BorderRadiusSize.m),
                      tooltipPadding: const EdgeInsets.all(Spacing.m),
                      tooltipActions: [
                        TooltipActionButton(
                          type: TooltipDefaultActionType.next,
                          textStyle: AppStyles.text16pxMedium.copyWith(
                            color: AppColors.white,
                          ),
                          backgroundColor: AppColors.accentLightPurpleBlue,
                        ),
                      ],
                      onToolTipClick: () {
                        debugPrint(
                            '_two showcase onToolTipClick '
                                'called in AppProgressProgram');
                        widget.onToolTipClick?.call();
                      },
                      description: context.strings.progressTrackDaily,
                      child: DayTimeLabel(
                        dayTimeText: widget.dayTime,
                        isCompleted: widget.isCompleted,
                      ),
                    ) else DayTimeLabel(
                      dayTimeText: widget.dayTime,
                      isCompleted: widget.isCompleted,
                    ),
              if (widget.nextCheckInKey != null) Showcase(
                      key: widget.nextCheckInKey!,
                      tooltipBackgroundColor: AppColors.primaryGrey7,
                      descTextStyle: AppStyles.text16pxRegular.copyWith(
                        color: AppColors.primaryWhite,
                      ),
                      tooltipBorderRadius:
                          BorderRadius.circular(BorderRadiusSize.m),
                      tooltipPadding: const EdgeInsets.all(Spacing.m),
                      tooltipActions: [
                        TooltipActionButton(
                          type: TooltipDefaultActionType.next,
                          textStyle: AppStyles.text16pxMedium.copyWith(
                            color: AppColors.white,
                          ),
                          backgroundColor: AppColors.accentLightPurpleBlue,
                        ),
                      ],
                      onToolTipClick: () {
                        debugPrint(
                            '_three showcase onToolTipClick '
                                'called in AppProgressProgram');
                        widget.onToolTipClick?.call();
                      },
                      description: context.strings.progressTimeLeft,
                      child: Container(
                        padding: widget.isCompleted
                            ? const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4,)
                            : EdgeInsets.zero,
                        decoration: widget.isCompleted
                            ? BoxDecoration(
                                color: AppColors.accentLightPurpleBlue
                                    .withValues(alpha: 0.3),
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                  color: AppColors.accentLightPurpleBlue
                                      .withValues(alpha: 0.6),

                                ),
                              )
                            : null,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: context.strings.progressNextCheckIn,
                                style: AppStyles.text13pxRegular.copyWith(
                                  color: widget.isCompleted
                                      ? AppColors.
                                  primaryWhite.withValues(alpha: 0.9)
                                      : AppColors.primaryGrey3,
                                ),
                              ),
                              TextSpan(
                                text: _onlyTimeOrReadyText(context),
                                style: AppStyles.text13pxBold.copyWith(
                                  color: AppColors.primaryWhite,
                                  fontWeight: widget.isCompleted
                                      ? FontWeight.w700
                                      : FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ) else Container(
                      padding: widget.isCompleted
                          ? const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4,)
                          : EdgeInsets.zero,
                      decoration: widget.isCompleted
                          ? BoxDecoration(
                              color: AppColors.accentLightPurpleBlue
                                  .withValues(alpha: 0.3),
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: AppColors.accentLightPurpleBlue
                                    .withValues(alpha: 0.6),
                              ),
                            )
                          : null,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: context.strings.progressNextCheckIn,
                              style: AppStyles.text13pxRegular.copyWith(
                                color: widget.isCompleted
                                    ? AppColors.primaryWhite.
                                withValues(alpha: 0.9)
                                    : AppColors.primaryGrey3,
                              ),
                            ),
                            TextSpan(
                              text: _onlyTimeOrReadyText(context),
                              style: AppStyles.text13pxBold.copyWith(
                                color: AppColors.primaryWhite,
                                fontWeight: widget.isCompleted
                                    ? FontWeight.w700
                                    : FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
            ],
          ),
          const Gap(Spacing.s),
          AppProgress(
            completedSteps: widget.completedSteps,
            allSteps: widget.allSteps,
          ),
        ],
      ),
    );
  }
}
