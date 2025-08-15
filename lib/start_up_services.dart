import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:trueme/core/logger/logger.dart';
import 'package:trueme/core/service_locator/service_locater.dart';
import 'package:trueme/core/services/mixpanel_service.dart';
import 'package:trueme/core/services/sentry_service.dart';
import 'package:trueme/flavors.dart';

abstract class StartUpService {
  static Future<void> initServices(Flavor flavor) async {
    AppLogger.init();
    await _configureSentry(flavor);
    await _configureMixpanel(flavor);
    await _configureGlobalAppSettings();
    await _configurePackagesDependencies(flavor);
    await _configureOnesignal();
  }

  static Future<void> _configureSentry(Flavor flavor) async {
    await SentryService.initialize(flavor);
  }

  static Future<void> _configureMixpanel(Flavor flavor) async {
    await MixpanelService.initialize(flavor);
  }

  static Future<void> _configureGlobalAppSettings() async {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent),);
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  static Future<void> _configurePackagesDependencies(Flavor flavor) async {
    final flavorName = flavor.name.toLowerCase();
    await Future.wait([setupServiceLocator(flavorName: flavorName)]);
  }

  static Future<void> _configureOnesignal() async {
    final keys = await F.apiKeys;

    //Remove this method to stop OneSignal Debugging
    if (F.isDev) {
      await OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
    }

    OneSignal.initialize(keys.onesignalKey);

    await OneSignal.Notifications.requestPermission(true);

    // Listen to notification clicks
    OneSignal.Notifications.addClickListener((event) {
      AppLogger.dev(
          'OneSignal: notification clicked:'
              ' ${event.notification.notificationId}',
      );
      // Handle notification click here if needed
    });

    // Listen to permission changes
    OneSignal.Notifications.addPermissionObserver((state) {
      AppLogger.dev('OneSignal: Has notification permission: $state',
      );
    });
  }
}
