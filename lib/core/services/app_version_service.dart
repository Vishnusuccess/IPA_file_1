import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:trueme/core/logger/logger.dart';

@singleton
class AppVersionService {
  Future<String> getVersion() async {
    try {
      final packageInfo = await PackageInfo.fromPlatform();
      return '${packageInfo.version} (${packageInfo.buildNumber})';
    } catch (e, stackTrace) {
      AppLogger.error('Error loading version info', e, stackTrace);

      await Sentry.captureException(
        Exception(
            'AppVersionException: Error loading version info - $e',),
        stackTrace: stackTrace,
      );

      return '';
    }
  }
}
