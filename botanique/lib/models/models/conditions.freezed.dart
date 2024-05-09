// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conditions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConditionsLog _$ConditionsLogFromJson(Map<String, dynamic> json) {
  return _ConditionsLog.fromJson(json);
}

/// @nodoc
mixin _$ConditionsLog {
  String get conditionsId => throw _privateConstructorUsedError;
  String get plantId => throw _privateConstructorUsedError;
  DateTime get timeStamp => throw _privateConstructorUsedError;
  int get mood => throw _privateConstructorUsedError;
  double get soilMoisture => throw _privateConstructorUsedError;
  double get light => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionsLogCopyWith<ConditionsLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionsLogCopyWith<$Res> {
  factory $ConditionsLogCopyWith(
          ConditionsLog value, $Res Function(ConditionsLog) then) =
      _$ConditionsLogCopyWithImpl<$Res, ConditionsLog>;
  @useResult
  $Res call(
      {String conditionsId,
      String plantId,
      DateTime timeStamp,
      int mood,
      double soilMoisture,
      double light,
      double temperature,
      double humidity});
}

/// @nodoc
class _$ConditionsLogCopyWithImpl<$Res, $Val extends ConditionsLog>
    implements $ConditionsLogCopyWith<$Res> {
  _$ConditionsLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conditionsId = null,
    Object? plantId = null,
    Object? timeStamp = null,
    Object? mood = null,
    Object? soilMoisture = null,
    Object? light = null,
    Object? temperature = null,
    Object? humidity = null,
  }) {
    return _then(_value.copyWith(
      conditionsId: null == conditionsId
          ? _value.conditionsId
          : conditionsId // ignore: cast_nullable_to_non_nullable
              as String,
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mood: null == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as int,
      soilMoisture: null == soilMoisture
          ? _value.soilMoisture
          : soilMoisture // ignore: cast_nullable_to_non_nullable
              as double,
      light: null == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as double,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConditionsLogImplCopyWith<$Res>
    implements $ConditionsLogCopyWith<$Res> {
  factory _$$ConditionsLogImplCopyWith(
          _$ConditionsLogImpl value, $Res Function(_$ConditionsLogImpl) then) =
      __$$ConditionsLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String conditionsId,
      String plantId,
      DateTime timeStamp,
      int mood,
      double soilMoisture,
      double light,
      double temperature,
      double humidity});
}

/// @nodoc
class __$$ConditionsLogImplCopyWithImpl<$Res>
    extends _$ConditionsLogCopyWithImpl<$Res, _$ConditionsLogImpl>
    implements _$$ConditionsLogImplCopyWith<$Res> {
  __$$ConditionsLogImplCopyWithImpl(
      _$ConditionsLogImpl _value, $Res Function(_$ConditionsLogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conditionsId = null,
    Object? plantId = null,
    Object? timeStamp = null,
    Object? mood = null,
    Object? soilMoisture = null,
    Object? light = null,
    Object? temperature = null,
    Object? humidity = null,
  }) {
    return _then(_$ConditionsLogImpl(
      conditionsId: null == conditionsId
          ? _value.conditionsId
          : conditionsId // ignore: cast_nullable_to_non_nullable
              as String,
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mood: null == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as int,
      soilMoisture: null == soilMoisture
          ? _value.soilMoisture
          : soilMoisture // ignore: cast_nullable_to_non_nullable
              as double,
      light: null == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as double,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionsLogImpl implements _ConditionsLog {
  _$ConditionsLogImpl(
      {required this.conditionsId,
      required this.plantId,
      required this.timeStamp,
      required this.mood,
      required this.soilMoisture,
      required this.light,
      required this.temperature,
      required this.humidity});

  factory _$ConditionsLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionsLogImplFromJson(json);

  @override
  final String conditionsId;
  @override
  final String plantId;
  @override
  final DateTime timeStamp;
  @override
  final int mood;
  @override
  final double soilMoisture;
  @override
  final double light;
  @override
  final double temperature;
  @override
  final double humidity;

  @override
  String toString() {
    return 'ConditionsLog(conditionsId: $conditionsId, plantId: $plantId, timeStamp: $timeStamp, mood: $mood, soilMoisture: $soilMoisture, light: $light, temperature: $temperature, humidity: $humidity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionsLogImpl &&
            (identical(other.conditionsId, conditionsId) ||
                other.conditionsId == conditionsId) &&
            (identical(other.plantId, plantId) || other.plantId == plantId) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp) &&
            (identical(other.mood, mood) || other.mood == mood) &&
            (identical(other.soilMoisture, soilMoisture) ||
                other.soilMoisture == soilMoisture) &&
            (identical(other.light, light) || other.light == light) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, conditionsId, plantId, timeStamp,
      mood, soilMoisture, light, temperature, humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionsLogImplCopyWith<_$ConditionsLogImpl> get copyWith =>
      __$$ConditionsLogImplCopyWithImpl<_$ConditionsLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionsLogImplToJson(
      this,
    );
  }
}

abstract class _ConditionsLog implements ConditionsLog {
  factory _ConditionsLog(
      {required final String conditionsId,
      required final String plantId,
      required final DateTime timeStamp,
      required final int mood,
      required final double soilMoisture,
      required final double light,
      required final double temperature,
      required final double humidity}) = _$ConditionsLogImpl;

  factory _ConditionsLog.fromJson(Map<String, dynamic> json) =
      _$ConditionsLogImpl.fromJson;

  @override
  String get conditionsId;
  @override
  String get plantId;
  @override
  DateTime get timeStamp;
  @override
  int get mood;
  @override
  double get soilMoisture;
  @override
  double get light;
  @override
  double get temperature;
  @override
  double get humidity;
  @override
  @JsonKey(ignore: true)
  _$$ConditionsLogImplCopyWith<_$ConditionsLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
