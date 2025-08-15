import 'dart:io' show Platform;
import 'dart:math' as math;

import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

@injectable
class GeneralConfigApplication {
  GeneralConfigApplication();

  static Future<String> currentAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return '${packageInfo.version} (${packageInfo.buildNumber})';
  }

  static Future<String> plainAppVersionWithOutBuild() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }

  static String platform() {
    return Platform.operatingSystem;
  }

  static bool isIOS() {
    return Platform.isIOS;
  }

  static Future<bool> currentAppVersionIsSupported(
    String minimumAppVersion,
  ) async {
    final supportedAppVersion = minimumAppVersion;

    final packageInfo = await PackageInfo.fromPlatform();
    final currentAppVersion = packageInfo.version;

    return _shouldUpdate(currentAppVersion, supportedAppVersion);
  }

  static bool _shouldUpdate(
      String currentAppVersion, String supportedAppVersion,) {
    final versionNumbersA =
        currentAppVersion.split('.').map((e) => int.tryParse(e) ?? 0).toList();
    final versionNumbersB = supportedAppVersion
        .split('.')
        .map((e) => int.tryParse(e) ?? 0)
        .toList();

    final versionASize = versionNumbersA.length;
    final versionBSize = versionNumbersB.length;
    final int maxSize = math.max(versionASize, versionBSize);

    for (var i = 0; i < maxSize; i++) {
      if ((i < versionASize ? versionNumbersA[i] : 0) >
          (i < versionBSize ? versionNumbersB[i] : 0)) {
        return false;
      } else if ((i < versionASize ? versionNumbersA[i] : 0) <
          (i < versionBSize ? versionNumbersB[i] : 0)) {
        return true;
      }
    }
    return false;
  }
}
