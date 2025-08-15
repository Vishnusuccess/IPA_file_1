// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_completion_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExerciseCompletionModel _$ExerciseCompletionModelFromJson(
    Map<String, dynamic> json) {
  return _ExerciseCompletionModel.fromJson(json);
}

/// @nodoc
mixin _$ExerciseCompletionModel {
  String get exerciseType => throw _privateConstructorUsedError;
  String get exerciseCompletionId => throw _privateConstructorUsedError;
  String get exerciseId => throw _privateConstructorUsedError;
  String get programProgressId => throw _privateConstructorUsedError;
  List<String> get answers => throw _privateConstructorUsedError;

  /// Serializes this ExerciseCompletionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExerciseCompletionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExerciseCompletionModelCopyWith<ExerciseCompletionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCompletionModelCopyWith<$Res> {
  factory $ExerciseCompletionModelCopyWith(ExerciseCompletionModel value,
          $Res Function(ExerciseCompletionModel) then) =
      _$ExerciseCompletionModelCopyWithImpl<$Res, ExerciseCompletionModel>;
  @useResult
  $Res call(
      {String exerciseType,
      String exerciseCompletionId,
      String exerciseId,
      String programProgressId,
      List<String> answers});
}

/// @nodoc
class _$ExerciseCompletionModelCopyWithImpl<$Res,
        $Val extends ExerciseCompletionModel>
    implements $ExerciseCompletionModelCopyWith<$Res> {
  _$ExerciseCompletionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExerciseCompletionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerciseType = null,
    Object? exerciseCompletionId = null,
    Object? exerciseId = null,
    Object? programProgressId = null,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      exerciseType: null == exerciseType
          ? _value.exerciseType
          : exerciseType // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseCompletionId: null == exerciseCompletionId
          ? _value.exerciseCompletionId
          : exerciseCompletionId // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as String,
      programProgressId: null == programProgressId
          ? _value.programProgressId
          : programProgressId // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseCompletionModelImplCopyWith<$Res>
    implements $ExerciseCompletionModelCopyWith<$Res> {
  factory _$$ExerciseCompletionModelImplCopyWith(
          _$ExerciseCompletionModelImpl value,
          $Res Function(_$ExerciseCompletionModelImpl) then) =
      __$$ExerciseCompletionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String exerciseType,
      String exerciseCompletionId,
      String exerciseId,
      String programProgressId,
      List<String> answers});
}

/// @nodoc
class __$$ExerciseCompletionModelImplCopyWithImpl<$Res>
    extends _$ExerciseCompletionModelCopyWithImpl<$Res,
        _$ExerciseCompletionModelImpl>
    implements _$$ExerciseCompletionModelImplCopyWith<$Res> {
  __$$ExerciseCompletionModelImplCopyWithImpl(
      _$ExerciseCompletionModelImpl _value,
      $Res Function(_$ExerciseCompletionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExerciseCompletionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerciseType = null,
    Object? exerciseCompletionId = null,
    Object? exerciseId = null,
    Object? programProgressId = null,
    Object? answers = null,
  }) {
    return _then(_$ExerciseCompletionModelImpl(
      exerciseType: null == exerciseType
          ? _value.exerciseType
          : exerciseType // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseCompletionId: null == exerciseCompletionId
          ? _value.exerciseCompletionId
          : exerciseCompletionId // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as String,
      programProgressId: null == programProgressId
          ? _value.programProgressId
          : programProgressId // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseCompletionModelImpl implements _ExerciseCompletionModel {
  const _$ExerciseCompletionModelImpl(
      {required this.exerciseType,
      required this.exerciseCompletionId,
      required this.exerciseId,
      required this.programProgressId,
      required final List<String> answers})
      : _answers = answers;

  factory _$ExerciseCompletionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseCompletionModelImplFromJson(json);

  @override
  final String exerciseType;
  @override
  final String exerciseCompletionId;
  @override
  final String exerciseId;
  @override
  final String programProgressId;
  final List<String> _answers;
  @override
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'ExerciseCompletionModel(exerciseType: $exerciseType, exerciseCompletionId: $exerciseCompletionId, exerciseId: $exerciseId, programProgressId: $programProgressId, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseCompletionModelImpl &&
            (identical(other.exerciseType, exerciseType) ||
                other.exerciseType == exerciseType) &&
            (identical(other.exerciseCompletionId, exerciseCompletionId) ||
                other.exerciseCompletionId == exerciseCompletionId) &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            (identical(other.programProgressId, programProgressId) ||
                other.programProgressId == programProgressId) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      exerciseType,
      exerciseCompletionId,
      exerciseId,
      programProgressId,
      const DeepCollectionEquality().hash(_answers));

  /// Create a copy of ExerciseCompletionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseCompletionModelImplCopyWith<_$ExerciseCompletionModelImpl>
      get copyWith => __$$ExerciseCompletionModelImplCopyWithImpl<
          _$ExerciseCompletionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseCompletionModelImplToJson(
      this,
    );
  }
}

abstract class _ExerciseCompletionModel implements ExerciseCompletionModel {
  const factory _ExerciseCompletionModel(
      {required final String exerciseType,
      required final String exerciseCompletionId,
      required final String exerciseId,
      required final String programProgressId,
      required final List<String> answers}) = _$ExerciseCompletionModelImpl;

  factory _ExerciseCompletionModel.fromJson(Map<String, dynamic> json) =
      _$ExerciseCompletionModelImpl.fromJson;

  @override
  String get exerciseType;
  @override
  String get exerciseCompletionId;
  @override
  String get exerciseId;
  @override
  String get programProgressId;
  @override
  List<String> get answers;

  /// Create a copy of ExerciseCompletionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExerciseCompletionModelImplCopyWith<_$ExerciseCompletionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
