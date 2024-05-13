// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'conditions.dart';

class ConditionsLogMapper extends ClassMapperBase<ConditionsLog> {
  ConditionsLogMapper._();

  static ConditionsLogMapper? _instance;
  static ConditionsLogMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ConditionsLogMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ConditionsLog';

  static String _$conditionsId(ConditionsLog v) => v.conditionsId;
  static const Field<ConditionsLog, String> _f$conditionsId =
      Field('conditionsId', _$conditionsId);
  static String _$plantId(ConditionsLog v) => v.plantId;
  static const Field<ConditionsLog, String> _f$plantId =
      Field('plantId', _$plantId);
  static DateTime _$timeStamp(ConditionsLog v) => v.timeStamp;
  static const Field<ConditionsLog, DateTime> _f$timeStamp =
      Field('timeStamp', _$timeStamp);
  static int _$mood(ConditionsLog v) => v.mood;
  static const Field<ConditionsLog, int> _f$mood = Field('mood', _$mood);
  static double _$soilMoisture(ConditionsLog v) => v.soilMoisture;
  static const Field<ConditionsLog, double> _f$soilMoisture =
      Field('soilMoisture', _$soilMoisture);
  static double _$light(ConditionsLog v) => v.light;
  static const Field<ConditionsLog, double> _f$light = Field('light', _$light);
  static double _$temperature(ConditionsLog v) => v.temperature;
  static const Field<ConditionsLog, double> _f$temperature =
      Field('temperature', _$temperature);
  static double _$humidity(ConditionsLog v) => v.humidity;
  static const Field<ConditionsLog, double> _f$humidity =
      Field('humidity', _$humidity);

  @override
  final MappableFields<ConditionsLog> fields = const {
    #conditionsId: _f$conditionsId,
    #plantId: _f$plantId,
    #timeStamp: _f$timeStamp,
    #mood: _f$mood,
    #soilMoisture: _f$soilMoisture,
    #light: _f$light,
    #temperature: _f$temperature,
    #humidity: _f$humidity,
  };

  static ConditionsLog _instantiate(DecodingData data) {
    return ConditionsLog(
        conditionsId: data.dec(_f$conditionsId),
        plantId: data.dec(_f$plantId),
        timeStamp: data.dec(_f$timeStamp),
        mood: data.dec(_f$mood),
        soilMoisture: data.dec(_f$soilMoisture),
        light: data.dec(_f$light),
        temperature: data.dec(_f$temperature),
        humidity: data.dec(_f$humidity));
  }

  @override
  final Function instantiate = _instantiate;

  static ConditionsLog fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ConditionsLog>(map);
  }

  static ConditionsLog fromJson(String json) {
    return ensureInitialized().decodeJson<ConditionsLog>(json);
  }
}

mixin ConditionsLogMappable {
  String toJson() {
    return ConditionsLogMapper.ensureInitialized()
        .encodeJson<ConditionsLog>(this as ConditionsLog);
  }

  Map<String, dynamic> toMap() {
    return ConditionsLogMapper.ensureInitialized()
        .encodeMap<ConditionsLog>(this as ConditionsLog);
  }

  ConditionsLogCopyWith<ConditionsLog, ConditionsLog, ConditionsLog>
      get copyWith => _ConditionsLogCopyWithImpl(
          this as ConditionsLog, $identity, $identity);
  @override
  String toString() {
    return ConditionsLogMapper.ensureInitialized()
        .stringifyValue(this as ConditionsLog);
  }

  @override
  bool operator ==(Object other) {
    return ConditionsLogMapper.ensureInitialized()
        .equalsValue(this as ConditionsLog, other);
  }

  @override
  int get hashCode {
    return ConditionsLogMapper.ensureInitialized()
        .hashValue(this as ConditionsLog);
  }
}

extension ConditionsLogValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ConditionsLog, $Out> {
  ConditionsLogCopyWith<$R, ConditionsLog, $Out> get $asConditionsLog =>
      $base.as((v, t, t2) => _ConditionsLogCopyWithImpl(v, t, t2));
}

abstract class ConditionsLogCopyWith<$R, $In extends ConditionsLog, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? conditionsId,
      String? plantId,
      DateTime? timeStamp,
      int? mood,
      double? soilMoisture,
      double? light,
      double? temperature,
      double? humidity});
  ConditionsLogCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ConditionsLogCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ConditionsLog, $Out>
    implements ConditionsLogCopyWith<$R, ConditionsLog, $Out> {
  _ConditionsLogCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ConditionsLog> $mapper =
      ConditionsLogMapper.ensureInitialized();
  @override
  $R call(
          {String? conditionsId,
          String? plantId,
          DateTime? timeStamp,
          int? mood,
          double? soilMoisture,
          double? light,
          double? temperature,
          double? humidity}) =>
      $apply(FieldCopyWithData({
        if (conditionsId != null) #conditionsId: conditionsId,
        if (plantId != null) #plantId: plantId,
        if (timeStamp != null) #timeStamp: timeStamp,
        if (mood != null) #mood: mood,
        if (soilMoisture != null) #soilMoisture: soilMoisture,
        if (light != null) #light: light,
        if (temperature != null) #temperature: temperature,
        if (humidity != null) #humidity: humidity
      }));
  @override
  ConditionsLog $make(CopyWithData data) => ConditionsLog(
      conditionsId: data.get(#conditionsId, or: $value.conditionsId),
      plantId: data.get(#plantId, or: $value.plantId),
      timeStamp: data.get(#timeStamp, or: $value.timeStamp),
      mood: data.get(#mood, or: $value.mood),
      soilMoisture: data.get(#soilMoisture, or: $value.soilMoisture),
      light: data.get(#light, or: $value.light),
      temperature: data.get(#temperature, or: $value.temperature),
      humidity: data.get(#humidity, or: $value.humidity));

  @override
  ConditionsLogCopyWith<$R2, ConditionsLog, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ConditionsLogCopyWithImpl($value, $cast, t);
}
