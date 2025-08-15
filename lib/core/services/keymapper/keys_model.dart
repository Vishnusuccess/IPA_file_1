import 'package:freezed_annotation/freezed_annotation.dart';

part 'keys_model.freezed.dart';
part 'keys_model.g.dart';

@freezed
class KeysModel with _$KeysModel {
  const factory KeysModel({
    required String appIosId,
    required String auth0Domain,
    required String auth0ClientID,
    required String appAndroidId,
    required String onesignalKey,
    required String auth0Audience,
    required String mixPanelKeys,
  }) = _KeysModel;

  factory KeysModel.fromJson(Map<String, dynamic> json) =>
      _$KeysModelFromJson(json);

  factory KeysModel.empty() => const KeysModel(
        appIosId: '',
        auth0Domain: '',
        auth0ClientID: '',
        appAndroidId: '',
        onesignalKey: '',
        auth0Audience: '',
        mixPanelKeys: '',
      );
}
