// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkin_timer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckinTimerModel _$CheckinTimerModelFromJson(Map<String, dynamic> json) {
  return _CheckinTimerModel.fromJson(json);
}

/// @nodoc
mixin _$CheckinTimerModel {
  String get stage => throw _privateConstructorUsedError;
  int get dailyPromptDay => throw _privateConstructorUsedError;
  int? get secondsUntilNextCheckin => throw _privateConstructorUsedError;

  /// Serializes this CheckinTimerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckinTimerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckinTimerModelCopyWith<CheckinTimerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckinTimerModelCopyWith<$Res> {
  factory $CheckinTimerModelCopyWith(
          CheckinTimerModel value, $Res Function(CheckinTimerModel) then) =
      _$CheckinTimerModelCopyWithImpl<$Res, CheckinTimerModel>;
  @useResult
  $Res call({String stage, int dailyPromptDay, int? secondsUntilNextCheckin});
}

/// @nodoc
class _$CheckinTimerModelCopyWithImpl<$Res, $Val extends CheckinTimerModel>
    implements $CheckinTimerModelCopyWith<$Res> {
  _$CheckinTimerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckinTimerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = null,
    Object? dailyPromptDay = null,
    Object? secondsUntilNextCheckin = freezed,
  }) {
    return _then(_value.copyWith(
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String,
      dailyPromptDay: null == dailyPromptDay
          ? _value.dailyPromptDay
          : dailyPromptDay // ignore: cast_nullable_to_non_nullable
              as int,
      secondsUntilNextCheckin: freezed == secondsUntilNextCheckin
          ? _value.secondsUntilNextCheckin
          : secondsUntilNextCheckin // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckinTimerModelImplCopyWith<$Res>
    implements $CheckinTimerModelCopyWith<$Res> {
  factory _$$CheckinTimerModelImplCopyWith(_$CheckinTimerModelImpl value,
          $Res Function(_$CheckinTimerModelImpl) then) =
      __$$CheckinTimerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String stage, int dailyPromptDay, int? secondsUntilNextCheckin});
}

/// @nodoc
class __$$CheckinTimerModelImplCopyWithImpl<$Res>
    extends _$CheckinTimerModelCopyWithImpl<$Res, _$CheckinTimerModelImpl>
    implements _$$CheckinTimerModelImplCopyWith<$Res> {
  __$$CheckinTimerModelImplCopyWithImpl(_$CheckinTimerModelImpl _value,
      $Res Function(_$CheckinTimerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckinTimerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = null,
    Object? dailyPromptDay = null,
    Object? secondsUntilNextCheckin = freezed,
  }) {
    return _then(_$CheckinTimerModelImpl(
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as String,
      dailyPromptDay: null == dailyPromptDay
          ? _value.dailyPromptDay
          : dailyPromptDay // ignore: cast_nullable_to_non_nullable
              as int,
      secondsUntilNextCheckin: freezed == secondsUntilNextCheckin
          ? _value.secondsUntilNextCheckin
          : secondsUntilNextCheckin // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckinTimerModelImpl implements _CheckinTimerModel {
  const _$CheckinTimerModelImpl(
      {required this.stage,
      required this.dailyPromptDay,
      this.secondsUntilNextCheckin});

  factory _$CheckinTimerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckinTimerModelImplFromJson(json);

  @override
  final String stage;
  @override
  final int dailyPromptDay;
  @override
  final int? secondsUntilNextCheckin;

  @override
  String toString() {
    return 'CheckinTimerModel(stage: $stage, dailyPromptDay: $dailyPromptDay, secondsUntilNextCheckin: $secondsUntilNextCheckin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckinTimerModelImpl &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.dailyPromptDay, dailyPromptDay) ||
                other.dailyPromptDay == dailyPromptDay) &&
            (identical(
                    other.secondsUntilNextCheckin, secondsUntilNextCheckin) ||
                other.secondsUntilNextCheckin == secondsUntilNextCheckin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, stage, dailyPromptDay, secondsUntilNextCheckin);

  /// Create a copy of CheckinTimerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckinTimerModelImplCopyWith<_$CheckinTimerModelImpl> get copyWith =>
      __$$CheckinTimerModelImplCopyWithImpl<_$CheckinTimerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckinTimerModelImplToJson(
      this,
    );
  }
}

abstract class _CheckinTimerModel implements CheckinTimerModel {
  const factory _CheckinTimerModel(
      {required final String stage,
      required final int dailyPromptDay,
      final int? secondsUntilNextCheckin}) = _$CheckinTimerModelImpl;

  factory _CheckinTimerModel.fromJson(Map<String, dynamic> json) =
      _$CheckinTimerModelImpl.fromJson;

  @override
  String get stage;
  @override
  int get dailyPromptDay;
  @override
  int? get secondsUntilNextCheckin;

  /// Create a copy of CheckinTimerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckinTimerModelImplCopyWith<_$CheckinTimerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
