import 'package:flutter/material.dart';
import 'package:trueme/core/services/app_tracking_service.dart';

/// Helper class do łatwego dodawania trackingu do istniejących buttonów
class ButtonTrackingHelper {
  /// Wrapper dla VoidCallback żeby dodać tracking
  static VoidCallback? trackButtonPress({
    required String buttonName,
    required VoidCallback? originalCallback,
    Map<String, dynamic>? properties,
  }) {
    if (originalCallback == null) return null;

    return () {
      // Track button press
      final currentScreen = AppTrackingService.currentScreen ?? 'unknown';
      AppTrackingService.trackButtonTap(
        buttonName,
        currentScreen,
        properties: properties,
      );

      // Execute original callback
      originalCallback();
    };
  }

  /// Wrapper dla async callback
  static VoidCallback? trackAsyncButtonPress({
    required String buttonName,
    required VoidCallback? originalCallback,
    Map<String, dynamic>? properties,
  }) {
    if (originalCallback == null) return null;

    return () async {
      // Track button press
      final currentScreen = AppTrackingService.currentScreen ?? 'unknown';
      await AppTrackingService.trackButtonTap(
        buttonName,
        currentScreen,
        properties: properties,
      );

      // Execute original callback
      originalCallback();
    };
  }
}

/// Extension methods dla łatwego używania
extension ButtonTrackingExtensions on VoidCallback? {
  /// Dodaje tracking do VoidCallback
  VoidCallback? withTracking(String buttonName,
      {Map<String, dynamic>? properties,}) {
    return ButtonTrackingHelper.trackButtonPress(
      buttonName: buttonName,
      originalCallback: this,
      properties: properties,
    );
  }

  /// Dodaje async tracking do VoidCallback
  VoidCallback? withAsyncTracking(String buttonName,
      {Map<String, dynamic>? properties,}) {
    return ButtonTrackingHelper.trackAsyncButtonPress(
      buttonName: buttonName,
      originalCallback: this,
      properties: properties,
    );
  }
}
