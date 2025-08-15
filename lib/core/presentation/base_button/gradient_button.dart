import 'package:flutter/material.dart';
import 'package:trueme/core/design/app_colors.dart';
import 'package:trueme/core/design/app_styles.dart';
import 'package:trueme/core/services/button_tracking_helper.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.trackingName,
    this.trackingProperties,
    super.key,
  });

  final String text;
  final VoidCallback onPressed;
  final bool isLoading;
  final String? trackingName;
  final Map<String, dynamic>? trackingProperties;

  @override
  Widget build(BuildContext context) {
    final trackedCallback = trackingName != null
        ? onPressed.withTracking(
            trackingName!,
            properties: trackingProperties,
          )
        : onPressed;

    return GestureDetector(
      onTap: isLoading ? null : trackedCallback,
      child: Container(
        height: 56,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xFF6962F2),
              Color(0xFF6962F2),
            ],
          ),
          backgroundBlendMode: BlendMode.srcOver,
        ),
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    strokeWidth: 2.5,
                  ),
                )
              : Text(
                  text,
                  style: AppStyles.text16pxBold.copyWith(
                    color: AppColors.primaryWhite,
                  ),
                ),
        ),
      ),
    );
  }
}
