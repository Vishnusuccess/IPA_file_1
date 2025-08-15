import 'package:trueme/core/constants/app_constants.dart';
import 'package:trueme/core/services/keymapper/key_service.dart';
import 'package:trueme/core/services/keymapper/keys_model.dart';

enum Flavor {
  // ignore: constant_identifier_names
  DEVELOP,
  // ignore: constant_identifier_names
  PROD,
}

class F {
  static Flavor? appFlavor;

  static bool get isDev => appFlavor == Flavor.DEVELOP;

  static String get title {
    switch (appFlavor) {
      case Flavor.DEVELOP:
        return 'TrueMe - Dev';
      case Flavor.PROD:
        return 'TrueMe Space';
      case null:
        return 'title';
    }
  }

  static String get backendUrl {
    switch (appFlavor) {
      case Flavor.DEVELOP:
        return AppConstants.baseApiUrlDev;
      case Flavor.PROD:
        return AppConstants.baseApiUrl;
      case null:
        return AppConstants.baseApiUrlDev;
    }
  }

  static Future<KeysModel> get apiKeys {
    switch (appFlavor) {
      case Flavor.DEVELOP:
        return KeyService.getKeys(
          jsonPath: 'assets/keys/develop/api_keys.json',
        );
      case Flavor.PROD:
        return KeyService.getKeys(
          jsonPath: 'assets/keys/production/api_keys.json',
        );
      case null:
        return Future.value(KeysModel.empty());
    }
  }
}
