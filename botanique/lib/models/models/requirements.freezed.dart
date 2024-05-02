// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requirements.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Requirements _$RequirementsFromJson(Map<String, dynamic> json) {
  return _Requirements.fromJson(json);
}

/// @nodoc
mixin _$Requirements {
  String get requirementsId => throw _privateConstructorUsedError;
  String get plantId => throw _privateConstructorUsedError;
  int get lightLevel => throw _privateConstructorUsedError;
  int get temperatureLevel => throw _privateConstructorUsedError;
  int get humidityLevel => throw _privateConstructorUsedError;
  int get soilMoistureLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequirementsCopyWith<Requirements> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequirementsCopyWith<$Res> {
  factory $RequirementsCopyWith(
          Requirements value, $Res Function(Requirements) then) =
      _$RequirementsCopyWithImpl<$Res, Requirements>;
  @useResult
  $Res call(
      {String requirementsId,
      String plantId,
      int lightLevel,
      int temperatureLevel,
      int humidityLevel,
      int soilMoistureLevel});
}

/// @nodoc
class _$RequirementsCopyWithImpl<$Res, $Val extends Requirements>
    implements $RequirementsCopyWith<$Res> {
  _$RequirementsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requirementsId = null,
    Object? plantId = null,
    Object? lightLevel = null,
    Object? temperatureLevel = null,
    Object? humidityLevel = null,
    Object? soilMoistureLevel = null,
  }) {
    return _then(_value.copyWith(
      requirementsId: null == requirementsId
          ? _value.requirementsId
          : requirementsId // ignore: cast_nullable_to_non_nullable
              as String,
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
      lightLevel: null == lightLevel
          ? _value.lightLevel
          : lightLevel // ignore: cast_nullable_to_non_nullable
              as int,
      temperatureLevel: null == temperatureLevel
          ? _value.temperatureLevel
          : temperatureLevel // ignore: cast_nullable_to_non_nullable
              as int,
      humidityLevel: null == humidityLevel
          ? _value.humidityLevel
          : humidityLevel // ignore: cast_nullable_to_non_nullable
              as int,
      soilMoistureLevel: null == soilMoistureLevel
          ? _value.soilMoistureLevel
          : soilMoistureLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequirementsImplCopyWith<$Res>
    implements $RequirementsCopyWith<$Res> {
  factory _$$RequirementsImplCopyWith(
          _$RequirementsImpl value, $Res Function(_$RequirementsImpl) then) =
      __$$RequirementsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String requirementsId,
      String plantId,
      int lightLevel,
      int temperatureLevel,
      int humidityLevel,
      int soilMoistureLevel});
}

/// @nodoc
class __$$RequirementsImplCopyWithImpl<$Res>
    extends _$RequirementsCopyWithImpl<$Res, _$RequirementsImpl>
    implements _$$RequirementsImplCopyWith<$Res> {
  __$$RequirementsImplCopyWithImpl(
      _$RequirementsImpl _value, $Res Function(_$RequirementsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requirementsId = null,
    Object? plantId = null,
    Object? lightLevel = null,
    Object? temperatureLevel = null,
    Object? humidityLevel = null,
    Object? soilMoistureLevel = null,
  }) {
    return _then(_$RequirementsImpl(
      requirementsId: null == requirementsId
          ? _value.requirementsId
          : requirementsId // ignore: cast_nullable_to_non_nullable
              as String,
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
      lightLevel: null == lightLevel
          ? _value.lightLevel
          : lightLevel // ignore: cast_nullable_to_non_nullable
              as int,
      temperatureLevel: null == temperatureLevel
          ? _value.temperatureLevel
          : temperatureLevel // ignore: cast_nullable_to_non_nullable
              as int,
      humidityLevel: null == humidityLevel
          ? _value.humidityLevel
          : humidityLevel // ignore: cast_nullable_to_non_nullable
              as int,
      soilMoistureLevel: null == soilMoistureLevel
          ? _value.soilMoistureLevel
          : soilMoistureLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequirementsImpl implements _Requirements {
  const _$RequirementsImpl(
      {required this.requirementsId,
      required this.plantId,
      required this.lightLevel,
      required this.temperatureLevel,
      required this.humidityLevel,
      required this.soilMoistureLevel});

  factory _$RequirementsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequirementsImplFromJson(json);

  @override
  final String requirementsId;
  @override
  final String plantId;
  @override
  final int lightLevel;
  @override
  final int temperatureLevel;
  @override
  final int humidityLevel;
  @override
  final int soilMoistureLevel;

  @override
  String toString() {
    return 'Requirements(requirementsId: $requirementsId, plantId: $plantId, lightLevel: $lightLevel, temperatureLevel: $temperatureLevel, humidityLevel: $humidityLevel, soilMoistureLevel: $soilMoistureLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequirementsImpl &&
            (identical(other.requirementsId, requirementsId) ||
                other.requirementsId == requirementsId) &&
            (identical(other.plantId, plantId) || other.plantId == plantId) &&
            (identical(other.lightLevel, lightLevel) ||
                other.lightLevel == lightLevel) &&
            (identical(other.temperatureLevel, temperatureLevel) ||
                other.temperatureLevel == temperatureLevel) &&
            (identical(other.humidityLevel, humidityLevel) ||
                other.humidityLevel == humidityLevel) &&
            (identical(other.soilMoistureLevel, soilMoistureLevel) ||
                other.soilMoistureLevel == soilMoistureLevel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, requirementsId, plantId,
      lightLevel, temperatureLevel, humidityLevel, soilMoistureLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequirementsImplCopyWith<_$RequirementsImpl> get copyWith =>
      __$$RequirementsImplCopyWithImpl<_$RequirementsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequirementsImplToJson(
      this,
    );
  }
}

abstract class _Requirements implements Requirements {
  const factory _Requirements(
      {required final String requirementsId,
      required final String plantId,
      required final int lightLevel,
      required final int temperatureLevel,
      required final int humidityLevel,
      required final int soilMoistureLevel}) = _$RequirementsImpl;

  factory _Requirements.fromJson(Map<String, dynamic> json) =
      _$RequirementsImpl.fromJson;

  @override
  String get requirementsId;
  @override
  String get plantId;
  @override
  int get lightLevel;
  @override
  int get temperatureLevel;
  @override
  int get humidityLevel;
  @override
  int get soilMoistureLevel;
  @override
  @JsonKey(ignore: true)
  _$$RequirementsImplCopyWith<_$RequirementsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
