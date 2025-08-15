// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keys_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KeysModel _$KeysModelFromJson(Map<String, dynamic> json) {
  return _KeysModel.fromJson(json);
}

/// @nodoc
mixin _$KeysModel {
  String get appIosId => throw _privateConstructorUsedError;
  String get auth0Domain => throw _privateConstructorUsedError;
  String get auth0ClientID => throw _privateConstructorUsedError;
  String get appAndroidId => throw _privateConstructorUsedError;
  String get onesignalKey => throw _privateConstructorUsedError;
  String get auth0Audience => throw _privateConstructorUsedError;
  String get mixPanelKeys => throw _privateConstructorUsedError;

  /// Serializes this KeysModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KeysModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeysModelCopyWith<KeysModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeysModelCopyWith<$Res> {
  factory $KeysModelCopyWith(KeysModel value, $Res Function(KeysModel) then) =
      _$KeysModelCopyWithImpl<$Res, KeysModel>;
  @useResult
  $Res call(
      {String appIosId,
      String auth0Domain,
      String auth0ClientID,
      String appAndroidId,
      String onesignalKey,
      String auth0Audience,
      String mixPanelKeys});
}

/// @nodoc
class _$KeysModelCopyWithImpl<$Res, $Val extends KeysModel>
    implements $KeysModelCopyWith<$Res> {
  _$KeysModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KeysModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appIosId = null,
    Object? auth0Domain = null,
    Object? auth0ClientID = null,
    Object? appAndroidId = null,
    Object? onesignalKey = null,
    Object? auth0Audience = null,
    Object? mixPanelKeys = null,
  }) {
    return _then(_value.copyWith(
      appIosId: null == appIosId
          ? _value.appIosId
          : appIosId // ignore: cast_nullable_to_non_nullable
              as String,
      auth0Domain: null == auth0Domain
          ? _value.auth0Domain
          : auth0Domain // ignore: cast_nullable_to_non_nullable
              as String,
      auth0ClientID: null == auth0ClientID
          ? _value.auth0ClientID
          : auth0ClientID // ignore: cast_nullable_to_non_nullable
              as String,
      appAndroidId: null == appAndroidId
          ? _value.appAndroidId
          : appAndroidId // ignore: cast_nullable_to_non_nullable
              as String,
      onesignalKey: null == onesignalKey
          ? _value.onesignalKey
          : onesignalKey // ignore: cast_nullable_to_non_nullable
              as String,
      auth0Audience: null == auth0Audience
          ? _value.auth0Audience
          : auth0Audience // ignore: cast_nullable_to_non_nullable
              as String,
      mixPanelKeys: null == mixPanelKeys
          ? _value.mixPanelKeys
          : mixPanelKeys // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeysModelImplCopyWith<$Res>
    implements $KeysModelCopyWith<$Res> {
  factory _$$KeysModelImplCopyWith(
          _$KeysModelImpl value, $Res Function(_$KeysModelImpl) then) =
      __$$KeysModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String appIosId,
      String auth0Domain,
      String auth0ClientID,
      String appAndroidId,
      String onesignalKey,
      String auth0Audience,
      String mixPanelKeys});
}

/// @nodoc
class __$$KeysModelImplCopyWithImpl<$Res>
    extends _$KeysModelCopyWithImpl<$Res, _$KeysModelImpl>
    implements _$$KeysModelImplCopyWith<$Res> {
  __$$KeysModelImplCopyWithImpl(
      _$KeysModelImpl _value, $Res Function(_$KeysModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeysModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appIosId = null,
    Object? auth0Domain = null,
    Object? auth0ClientID = null,
    Object? appAndroidId = null,
    Object? onesignalKey = null,
    Object? auth0Audience = null,
    Object? mixPanelKeys = null,
  }) {
    return _then(_$KeysModelImpl(
      appIosId: null == appIosId
          ? _value.appIosId
          : appIosId // ignore: cast_nullable_to_non_nullable
              as String,
      auth0Domain: null == auth0Domain
          ? _value.auth0Domain
          : auth0Domain // ignore: cast_nullable_to_non_nullable
              as String,
      auth0ClientID: null == auth0ClientID
          ? _value.auth0ClientID
          : auth0ClientID // ignore: cast_nullable_to_non_nullable
              as String,
      appAndroidId: null == appAndroidId
          ? _value.appAndroidId
          : appAndroidId // ignore: cast_nullable_to_non_nullable
              as String,
      onesignalKey: null == onesignalKey
          ? _value.onesignalKey
          : onesignalKey // ignore: cast_nullable_to_non_nullable
              as String,
      auth0Audience: null == auth0Audience
          ? _value.auth0Audience
          : auth0Audience // ignore: cast_nullable_to_non_nullable
              as String,
      mixPanelKeys: null == mixPanelKeys
          ? _value.mixPanelKeys
          : mixPanelKeys // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeysModelImpl implements _KeysModel {
  const _$KeysModelImpl(
      {required this.appIosId,
      required this.auth0Domain,
      required this.auth0ClientID,
      required this.appAndroidId,
      required this.onesignalKey,
      required this.auth0Audience,
      required this.mixPanelKeys});

  factory _$KeysModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeysModelImplFromJson(json);

  @override
  final String appIosId;
  @override
  final String auth0Domain;
  @override
  final String auth0ClientID;
  @override
  final String appAndroidId;
  @override
  final String onesignalKey;
  @override
  final String auth0Audience;
  @override
  final String mixPanelKeys;

  @override
  String toString() {
    return 'KeysModel(appIosId: $appIosId, auth0Domain: $auth0Domain, auth0ClientID: $auth0ClientID, appAndroidId: $appAndroidId, onesignalKey: $onesignalKey, auth0Audience: $auth0Audience, mixPanelKeys: $mixPanelKeys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeysModelImpl &&
            (identical(other.appIosId, appIosId) ||
                other.appIosId == appIosId) &&
            (identical(other.auth0Domain, auth0Domain) ||
                other.auth0Domain == auth0Domain) &&
            (identical(other.auth0ClientID, auth0ClientID) ||
                other.auth0ClientID == auth0ClientID) &&
            (identical(other.appAndroidId, appAndroidId) ||
                other.appAndroidId == appAndroidId) &&
            (identical(other.onesignalKey, onesignalKey) ||
                other.onesignalKey == onesignalKey) &&
            (identical(other.auth0Audience, auth0Audience) ||
                other.auth0Audience == auth0Audience) &&
            (identical(other.mixPanelKeys, mixPanelKeys) ||
                other.mixPanelKeys == mixPanelKeys));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, appIosId, auth0Domain,
      auth0ClientID, appAndroidId, onesignalKey, auth0Audience, mixPanelKeys);

  /// Create a copy of KeysModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeysModelImplCopyWith<_$KeysModelImpl> get copyWith =>
      __$$KeysModelImplCopyWithImpl<_$KeysModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeysModelImplToJson(
      this,
    );
  }
}

abstract class _KeysModel implements KeysModel {
  const factory _KeysModel(
      {required final String appIosId,
      required final String auth0Domain,
      required final String auth0ClientID,
      required final String appAndroidId,
      required final String onesignalKey,
      required final String auth0Audience,
      required final String mixPanelKeys}) = _$KeysModelImpl;

  factory _KeysModel.fromJson(Map<String, dynamic> json) =
      _$KeysModelImpl.fromJson;

  @override
  String get appIosId;
  @override
  String get auth0Domain;
  @override
  String get auth0ClientID;
  @override
  String get appAndroidId;
  @override
  String get onesignalKey;
  @override
  String get auth0Audience;
  @override
  String get mixPanelKeys;

  /// Create a copy of KeysModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeysModelImplCopyWith<_$KeysModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
