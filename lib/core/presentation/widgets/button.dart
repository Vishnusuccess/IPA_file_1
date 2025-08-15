// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:trueme/core/design/design.dart';
import 'package:trueme/core/services/button_tracking_helper.dart';

const double _buttonHeight = 56;

class Button extends StatefulWidget {
  const Button({
    required this.text,
    this.onPressed,
    this.isPrimary = true,
    this.child,
    this.trackingName,
    this.trackingProperties,
    super.key,
  });

  final String text;
  final VoidCallback? onPressed;
  final bool isPrimary;
  final Widget? child;
  final String? trackingName;
  final Map<String, dynamic>? trackingProperties;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    final trackedCallback = widget.trackingName != null
        ? widget.onPressed.withTracking(
            widget.trackingName!,
            properties: widget.trackingProperties,
          )
        : widget.onPressed;

    return ElevatedButton(
      onPressed: trackedCallback,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (widget.onPressed == null) {
            return widget.isPrimary
                ? AppColors.accentVeryLightPurple.withOpacity(0.5)
                : AppColors.accentLightPurpleBlue.withOpacity(0.6);
          } else if (states.contains(WidgetState.pressed)) {
            return widget.isPrimary
                ? AppColors.accentPurpleBlue
                : AppColors.accentPurpleBlue;
          }
          return widget.isPrimary
              ? AppColors.accentVeryLightPurple
              : AppColors.transparent;
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (widget.isPrimary) {
            return AppColors.primaryWhite;
          }
          return widget.onPressed == null
              ? AppColors.accentLightPurpleBlue.withOpacity(0.6)
              : states.contains(WidgetState.pressed)
                  ? AppColors.accentPurpleBlue
                  : AppColors.accentLightPurpleBlue;
        }),
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        side: MaterialStateProperty.resolveWith<BorderSide>((states) {
          if (!widget.isPrimary && widget.onPressed != null) {
            return const BorderSide(
              color: AppColors.accentLightPurpleBlue,
            );
          }
          return BorderSide.none;
        }),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: Spacing.xl,
          ),
        ),
        minimumSize: MaterialStateProperty.all<Size>(
          const Size(double.infinity, _buttonHeight),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BorderRadiusSize.m),
          ),
        ),
        elevation: MaterialStateProperty.all(0),
        textStyle: MaterialStateProperty.resolveWith<TextStyle>((states) {
          return widget.isPrimary
              ? AppStyles.text16pxMedium
              : AppStyles.text13pxSemibold;
        }),
      ),
      child: widget.child ?? Text(widget.text),
    );
  }
}
