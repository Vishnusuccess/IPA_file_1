// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keys_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KeysModelImpl _$$KeysModelImplFromJson(Map<String, dynamic> json) =>
    _$KeysModelImpl(
      appIosId: json['appIosId'] as String,
      auth0Domain: json['auth0Domain'] as String,
      auth0ClientID: json['auth0ClientID'] as String,
      appAndroidId: json['appAndroidId'] as String,
      onesignalKey: json['onesignalKey'] as String,
      auth0Audience: json['auth0Audience'] as String,
      mixPanelKeys: json['mixPanelKeys'] as String,
    );

Map<String, dynamic> _$$KeysModelImplToJson(_$KeysModelImpl instance) =>
    <String, dynamic>{
      'appIosId': instance.appIosId,
      'auth0Domain': instance.auth0Domain,
      'auth0ClientID': instance.auth0ClientID,
      'appAndroidId': instance.appAndroidId,
      'onesignalKey': instance.onesignalKey,
      'auth0Audience': instance.auth0Audience,
      'mixPanelKeys': instance.mixPanelKeys,
    };
