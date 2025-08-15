import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:trueme/core/services/keymapper/keys_model.dart';

abstract class KeyService {
  static Future<KeysModel> getKeys({required String jsonPath}) async =>
      rootBundle.loadString(jsonPath).then(jsonDecode).then(
            (e) => KeysModel.fromJson(e as Map<String, dynamic>),
          );
}
