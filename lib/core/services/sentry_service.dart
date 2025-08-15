import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:trueme/flavors.dart';

@lazySingleton
class SentryService {
  static Future<void> initialize(Flavor flavor) async {
    final packageInfo = await PackageInfo.fromPlatform();
    final releaseVersion =
        '${packageInfo.appName}@'
        '${packageInfo.version}+${packageInfo.buildNumber}';

    final isDev = flavor == Flavor.DEVELOP;

    // Use appropriate sampling rates based on environment
    // 100% in development for testing, 50% in production to reduce volume
    final traceSampleRate = isDev ? 1.0 : 0.5;

    await SentryFlutter.init(
      (options) {
        options
          ..dsn =
              'https://407fb648f9d9692e9a18843d1ed1c6c2@o4509362753372160.ingest.us.sentry.io/4509362893291520'
          ..environment = flavor.name.toLowerCase()
          ..tracesSampleRate = traceSampleRate
          ..attachScreenshot = true
          ..enableAutoSessionTracking = true
          ..attachViewHierarchy = true
          // Configure debug mode (only enabled in development)
          ..debug = false
          // Add release version
          ..release = releaseVersion;
      },
    );
  }

  /// Capture an exception and send to Sentry
  static Future<void> captureException(
    dynamic exception, {
    dynamic stackTrace,
    Map<String, dynamic>? extra,
  }) async {
    await Sentry.captureException(
      exception,
      stackTrace: stackTrace,
        withScope: (scope) {
          if (extra != null && extra.isNotEmpty) {
            // Attach all your key/values under a single structured context
            scope.setContexts('extra', Map<String, dynamic>.from(extra));
          }
        },

    );
  }

  /// Add breadcrumb for tracking user actions
  static void addBreadcrumb({
    required String message,
    String? category,
    Map<String, dynamic>? data,
    SentryLevel level = SentryLevel.info,
  }) {
    Sentry.addBreadcrumb(
      Breadcrumb(
        message: message,
        category: category,
        data: data,
        level: level,
      ),
    );
  }
}
