import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trueme/core/design/design.dart';
import 'package:trueme/core/presentation/widgets/widgets.dart';

const _horizontalPadding = 30.0;

class MoodSlider extends StatefulWidget {
  const MoodSlider({
    required this.startLabel,
    required this.endLabel,
    required this.onValueChanged,
    super.key,
  });

  final String startLabel;
  final String endLabel;
  final ValueChanged<double> onValueChanged;

  @override
  State<MoodSlider> createState() => _MoodSliderState();
}

class _MoodSliderState extends State<MoodSlider> {
  double _value = 0.5;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.primaryBlack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  const Gap(68),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: _horizontalPadding,
                    ),
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: AppColors.accentPurpleBlue,
                        inactiveTrackColor: AppColors.primaryGrey5,
                        trackHeight: Spacing.xxs,
                        thumbColor: Colors.transparent,
                        thumbShape: const CapsuleSliderThumbShape(),
                        overlayColor:
                            AppColors.accentVeryLightPurple.
                            withValues(alpha: 0.2),
                        overlayShape: const RoundSliderOverlayShape(
                          overlayRadius: Spacing.l,
                        ),
                        valueIndicatorColor: AppColors.accentPurpleBlue,
                        valueIndicatorTextStyle:
                            const TextStyle(color: AppColors.primaryWhite),
                        tickMarkShape: const RoundSliderTickMarkShape(),
                        activeTickMarkColor: AppColors.accentPurpleBlue,
                        inactiveTickMarkColor: AppColors.primaryGrey5,
                        showValueIndicator: ShowValueIndicator.never,
                      ),
                      child: Slider(
                        padding: EdgeInsets.zero,
                        value: _value,
                        divisions: 8,
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                          widget.onValueChanged(value);
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const Positioned(
                top: 0,
                left: 70,
                child: AppIconContainer(
                  iconPath: 'assets/icons/sad.png',
                ),
              ),
              const Positioned(
                top: 0,
                right: 70,
                child: AppIconContainer(
                  iconPath: 'assets/icons/happy.png',
                ),
              ),
            ],
          ),
          const Gap(Spacing.s),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: _horizontalPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(9, (index) {
                return Container(
                  width: 1,
                  height: Spacing.xxs,
                  color: AppColors.primaryWhite,
                );
              }),
            ),
          ),
          const SizedBox(height: Spacing.xl),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: _horizontalPadding,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.startLabel,
                  style: AppStyles.text13pxRegular.copyWith(
                    color: AppColors.primaryGrey4,
                  ),
                  textAlign: TextAlign.left,
                ),
                Expanded(
                  child: Text(
                    widget.endLabel,
                    style: AppStyles.text13pxRegular.copyWith(
                      color: AppColors.primaryGrey4,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CapsuleSliderThumbShape extends SliderComponentShape {
  const CapsuleSliderThumbShape({
    this.thumbWidth = 20.0,
    this.thumbHeight = 44.0,
  });

  final double thumbWidth;
  final double thumbHeight;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(thumbWidth, thumbHeight);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final canvas = context.canvas;
    final paint = Paint()..style = PaintingStyle.fill;

    const startColor = AppColors.accentPurpleBlue;
    const endColor = AppColors.accentVeryLightPurple;

    final rect = Rect.fromCenter(
      center: center,
      width: thumbWidth,
      height: thumbHeight,
    );

    if (value == 0.0) {
      paint.color = startColor;
    } else if (value == 1.0) {
      paint.color = endColor;
    } else {
      const gradient = LinearGradient(
        colors: [startColor, endColor],
        stops: [0.0, 1.0],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      );
      paint.shader = gradient.createShader(rect);
    }

    final rrect = RRect.fromRectAndRadius(
      rect,
      Radius.circular(thumbWidth / 2),
    );

    canvas.drawRRect(rrect, paint);
  }
}
