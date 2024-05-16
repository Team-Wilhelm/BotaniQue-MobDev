// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'server_events.dart';

class ServerEventMapper extends SubClassMapperBase<ServerEvent> {
  ServerEventMapper._();

  static ServerEventMapper? _instance;
  static ServerEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServerEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
      ServerAuthenticatesUserMapper.ensureInitialized();
      ServerRespondsNotAuthenticatedMapper.ensureInitialized();
      ServerSendsImageWithoutBackgroundMapper.ensureInitialized();
      ServerSendsPlantMapper.ensureInitialized();
      ServerSavesPlantMapper.ensureInitialized();
      ServerConfirmsUpdateMapper.ensureInitialized();
      ServerConfirmsDeleteMapper.ensureInitialized();
      ServerSendsUserInfoMapper.ensureInitialized();
      ServerSendsLatestConditionsForPlantMapper.ensureInitialized();
      ServerLogsUserOutMapper.ensureInitialized();
      ServerSendsAllCollectionsMapper.ensureInitialized();
      ServerSendsPlantsMapper.ensureInitialized();
      ServerSavesCollectionMapper.ensureInitialized();
      ServerDeletesCollectionMapper.ensureInitialized();
      ServerSendsErrorMessageMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerEvent';

  static String _$eventType(ServerEvent v) => v.eventType;
  static const Field<ServerEvent, String> _f$eventType =
      Field('eventType', _$eventType);

  @override
  final MappableFields<ServerEvent> fields = const {
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = "BaseDto";
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ServerEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'ServerEvent', 'eventType', '${data.value['eventType']}');
  }

  @override
  final Function instantiate = _instantiate;

  static ServerEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerEvent>(map);
  }

  static ServerEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ServerEvent>(json);
  }
}

mixin ServerEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  ServerEventCopyWith<ServerEvent, ServerEvent, ServerEvent> get copyWith;
}

abstract class ServerEventCopyWith<$R, $In extends ServerEvent, $Out>
    implements BaseEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? eventType});
  ServerEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class ServerAuthenticatesUserMapper
    extends SubClassMapperBase<ServerAuthenticatesUser> {
  ServerAuthenticatesUserMapper._();

  static ServerAuthenticatesUserMapper? _instance;
  static ServerAuthenticatesUserMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerAuthenticatesUserMapper._());
      ServerEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ServerAuthenticatesUser';

  static String _$jwt(ServerAuthenticatesUser v) => v.jwt;
  static const Field<ServerAuthenticatesUser, String> _f$jwt =
      Field('jwt', _$jwt);
  static String _$eventType(ServerAuthenticatesUser v) => v.eventType;
  static const Field<ServerAuthenticatesUser, String> _f$eventType = Field(
      'eventType', _$eventType,
      opt: true, def: "ServerAuthenticatesUser");

  @override
  final MappableFields<ServerAuthenticatesUser> fields = const {
    #jwt: _f$jwt,
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerAuthenticatesUser';
  @override
  late final ClassMapperBase superMapper =
      ServerEventMapper.ensureInitialized();

  static ServerAuthenticatesUser _instantiate(DecodingData data) {
    return ServerAuthenticatesUser(
        jwt: data.dec(_f$jwt), eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerAuthenticatesUser fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerAuthenticatesUser>(map);
  }

  static ServerAuthenticatesUser fromJson(String json) {
    return ensureInitialized().decodeJson<ServerAuthenticatesUser>(json);
  }
}

mixin ServerAuthenticatesUserMappable {
  String toJson() {
    return ServerAuthenticatesUserMapper.ensureInitialized()
        .encodeJson<ServerAuthenticatesUser>(this as ServerAuthenticatesUser);
  }

  Map<String, dynamic> toMap() {
    return ServerAuthenticatesUserMapper.ensureInitialized()
        .encodeMap<ServerAuthenticatesUser>(this as ServerAuthenticatesUser);
  }

  ServerAuthenticatesUserCopyWith<ServerAuthenticatesUser,
          ServerAuthenticatesUser, ServerAuthenticatesUser>
      get copyWith => _ServerAuthenticatesUserCopyWithImpl(
          this as ServerAuthenticatesUser, $identity, $identity);
  @override
  String toString() {
    return ServerAuthenticatesUserMapper.ensureInitialized()
        .stringifyValue(this as ServerAuthenticatesUser);
  }

  @override
  bool operator ==(Object other) {
    return ServerAuthenticatesUserMapper.ensureInitialized()
        .equalsValue(this as ServerAuthenticatesUser, other);
  }

  @override
  int get hashCode {
    return ServerAuthenticatesUserMapper.ensureInitialized()
        .hashValue(this as ServerAuthenticatesUser);
  }
}

extension ServerAuthenticatesUserValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerAuthenticatesUser, $Out> {
  ServerAuthenticatesUserCopyWith<$R, ServerAuthenticatesUser, $Out>
      get $asServerAuthenticatesUser => $base
          .as((v, t, t2) => _ServerAuthenticatesUserCopyWithImpl(v, t, t2));
}

abstract class ServerAuthenticatesUserCopyWith<
    $R,
    $In extends ServerAuthenticatesUser,
    $Out> implements ServerEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? jwt, String? eventType});
  ServerAuthenticatesUserCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerAuthenticatesUserCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerAuthenticatesUser, $Out>
    implements
        ServerAuthenticatesUserCopyWith<$R, ServerAuthenticatesUser, $Out> {
  _ServerAuthenticatesUserCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerAuthenticatesUser> $mapper =
      ServerAuthenticatesUserMapper.ensureInitialized();
  @override
  $R call({String? jwt, String? eventType}) => $apply(FieldCopyWithData({
        if (jwt != null) #jwt: jwt,
        if (eventType != null) #eventType: eventType
      }));
  @override
  ServerAuthenticatesUser $make(CopyWithData data) => ServerAuthenticatesUser(
      jwt: data.get(#jwt, or: $value.jwt),
      eventType: data.get(#eventType, or: $value.eventType));

  @override
  ServerAuthenticatesUserCopyWith<$R2, ServerAuthenticatesUser, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerAuthenticatesUserCopyWithImpl($value, $cast, t);
}

class ServerRespondsNotAuthenticatedMapper
    extends SubClassMapperBase<ServerRespondsNotAuthenticated> {
  ServerRespondsNotAuthenticatedMapper._();

  static ServerRespondsNotAuthenticatedMapper? _instance;
  static ServerRespondsNotAuthenticatedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerRespondsNotAuthenticatedMapper._());
      ServerEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ServerRespondsNotAuthenticated';

  static String _$eventType(ServerRespondsNotAuthenticated v) => v.eventType;
  static const Field<ServerRespondsNotAuthenticated, String> _f$eventType =
      Field('eventType', _$eventType,
          opt: true, def: "ServerRespondsNotAuthenticated");

  @override
  final MappableFields<ServerRespondsNotAuthenticated> fields = const {
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerRespondsNotAuthenticated';
  @override
  late final ClassMapperBase superMapper =
      ServerEventMapper.ensureInitialized();

  static ServerRespondsNotAuthenticated _instantiate(DecodingData data) {
    return ServerRespondsNotAuthenticated(eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerRespondsNotAuthenticated fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerRespondsNotAuthenticated>(map);
  }

  static ServerRespondsNotAuthenticated fromJson(String json) {
    return ensureInitialized().decodeJson<ServerRespondsNotAuthenticated>(json);
  }
}

mixin ServerRespondsNotAuthenticatedMappable {
  String toJson() {
    return ServerRespondsNotAuthenticatedMapper.ensureInitialized()
        .encodeJson<ServerRespondsNotAuthenticated>(
            this as ServerRespondsNotAuthenticated);
  }

  Map<String, dynamic> toMap() {
    return ServerRespondsNotAuthenticatedMapper.ensureInitialized()
        .encodeMap<ServerRespondsNotAuthenticated>(
            this as ServerRespondsNotAuthenticated);
  }

  ServerRespondsNotAuthenticatedCopyWith<ServerRespondsNotAuthenticated,
          ServerRespondsNotAuthenticated, ServerRespondsNotAuthenticated>
      get copyWith => _ServerRespondsNotAuthenticatedCopyWithImpl(
          this as ServerRespondsNotAuthenticated, $identity, $identity);
  @override
  String toString() {
    return ServerRespondsNotAuthenticatedMapper.ensureInitialized()
        .stringifyValue(this as ServerRespondsNotAuthenticated);
  }

  @override
  bool operator ==(Object other) {
    return ServerRespondsNotAuthenticatedMapper.ensureInitialized()
        .equalsValue(this as ServerRespondsNotAuthenticated, other);
  }

  @override
  int get hashCode {
    return ServerRespondsNotAuthenticatedMapper.ensureInitialized()
        .hashValue(this as ServerRespondsNotAuthenticated);
  }
}

extension ServerRespondsNotAuthenticatedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerRespondsNotAuthenticated, $Out> {
  ServerRespondsNotAuthenticatedCopyWith<$R, ServerRespondsNotAuthenticated,
          $Out>
      get $asServerRespondsNotAuthenticated => $base.as(
          (v, t, t2) => _ServerRespondsNotAuthenticatedCopyWithImpl(v, t, t2));
}

abstract class ServerRespondsNotAuthenticatedCopyWith<
    $R,
    $In extends ServerRespondsNotAuthenticated,
    $Out> implements ServerEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? eventType});
  ServerRespondsNotAuthenticatedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerRespondsNotAuthenticatedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerRespondsNotAuthenticated, $Out>
    implements
        ServerRespondsNotAuthenticatedCopyWith<$R,
            ServerRespondsNotAuthenticated, $Out> {
  _ServerRespondsNotAuthenticatedCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerRespondsNotAuthenticated> $mapper =
      ServerRespondsNotAuthenticatedMapper.ensureInitialized();
  @override
  $R call({String? eventType}) =>
      $apply(FieldCopyWithData({if (eventType != null) #eventType: eventType}));
  @override
  ServerRespondsNotAuthenticated $make(CopyWithData data) =>
      ServerRespondsNotAuthenticated(
          eventType: data.get(#eventType, or: $value.eventType));

  @override
  ServerRespondsNotAuthenticatedCopyWith<$R2, ServerRespondsNotAuthenticated,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServerRespondsNotAuthenticatedCopyWithImpl($value, $cast, t);
}

class ServerSendsImageWithoutBackgroundMapper
    extends SubClassMapperBase<ServerSendsImageWithoutBackground> {
  ServerSendsImageWithoutBackgroundMapper._();

  static ServerSendsImageWithoutBackgroundMapper? _instance;
  static ServerSendsImageWithoutBackgroundMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerSendsImageWithoutBackgroundMapper._());
      ServerEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSendsImageWithoutBackground';

  static String _$base64Image(ServerSendsImageWithoutBackground v) =>
      v.base64Image;
  static const Field<ServerSendsImageWithoutBackground, String> _f$base64Image =
      Field('base64Image', _$base64Image);
  static String _$eventType(ServerSendsImageWithoutBackground v) => v.eventType;
  static const Field<ServerSendsImageWithoutBackground, String> _f$eventType =
      Field('eventType', _$eventType,
          opt: true, def: "ServerSendsImageWithoutBackground");

  @override
  final MappableFields<ServerSendsImageWithoutBackground> fields = const {
    #base64Image: _f$base64Image,
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerSendsImageWithoutBackground';
  @override
  late final ClassMapperBase superMapper =
      ServerEventMapper.ensureInitialized();

  static ServerSendsImageWithoutBackground _instantiate(DecodingData data) {
    return ServerSendsImageWithoutBackground(
        base64Image: data.dec(_f$base64Image),
        eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSendsImageWithoutBackground fromMap(Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<ServerSendsImageWithoutBackground>(map);
  }

  static ServerSendsImageWithoutBackground fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ServerSendsImageWithoutBackground>(json);
  }
}

mixin ServerSendsImageWithoutBackgroundMappable {
  String toJson() {
    return ServerSendsImageWithoutBackgroundMapper.ensureInitialized()
        .encodeJson<ServerSendsImageWithoutBackground>(
            this as ServerSendsImageWithoutBackground);
  }

  Map<String, dynamic> toMap() {
    return ServerSendsImageWithoutBackgroundMapper.ensureInitialized()
        .encodeMap<ServerSendsImageWithoutBackground>(
            this as ServerSendsImageWithoutBackground);
  }

  ServerSendsImageWithoutBackgroundCopyWith<ServerSendsImageWithoutBackground,
          ServerSendsImageWithoutBackground, ServerSendsImageWithoutBackground>
      get copyWith => _ServerSendsImageWithoutBackgroundCopyWithImpl(
          this as ServerSendsImageWithoutBackground, $identity, $identity);
  @override
  String toString() {
    return ServerSendsImageWithoutBackgroundMapper.ensureInitialized()
        .stringifyValue(this as ServerSendsImageWithoutBackground);
  }

  @override
  bool operator ==(Object other) {
    return ServerSendsImageWithoutBackgroundMapper.ensureInitialized()
        .equalsValue(this as ServerSendsImageWithoutBackground, other);
  }

  @override
  int get hashCode {
    return ServerSendsImageWithoutBackgroundMapper.ensureInitialized()
        .hashValue(this as ServerSendsImageWithoutBackground);
  }
}

extension ServerSendsImageWithoutBackgroundValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSendsImageWithoutBackground, $Out> {
  ServerSendsImageWithoutBackgroundCopyWith<$R,
          ServerSendsImageWithoutBackground, $Out>
      get $asServerSendsImageWithoutBackground => $base.as((v, t, t2) =>
          _ServerSendsImageWithoutBackgroundCopyWithImpl(v, t, t2));
}

abstract class ServerSendsImageWithoutBackgroundCopyWith<
    $R,
    $In extends ServerSendsImageWithoutBackground,
    $Out> implements ServerEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? base64Image, String? eventType});
  ServerSendsImageWithoutBackgroundCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerSendsImageWithoutBackgroundCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSendsImageWithoutBackground, $Out>
    implements
        ServerSendsImageWithoutBackgroundCopyWith<$R,
            ServerSendsImageWithoutBackground, $Out> {
  _ServerSendsImageWithoutBackgroundCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSendsImageWithoutBackground> $mapper =
      ServerSendsImageWithoutBackgroundMapper.ensureInitialized();
  @override
  $R call({String? base64Image, String? eventType}) =>
      $apply(FieldCopyWithData({
        if (base64Image != null) #base64Image: base64Image,
        if (eventType != null) #eventType: eventType
      }));
  @override
  ServerSendsImageWithoutBackground $make(CopyWithData data) =>
      ServerSendsImageWithoutBackground(
          base64Image: data.get(#base64Image, or: $value.base64Image),
          eventType: data.get(#eventType, or: $value.eventType));

  @override
  ServerSendsImageWithoutBackgroundCopyWith<$R2,
      ServerSendsImageWithoutBackground, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServerSendsImageWithoutBackgroundCopyWithImpl($value, $cast, t);
}

class ServerSendsPlantMapper extends SubClassMapperBase<ServerSendsPlant> {
  ServerSendsPlantMapper._();

  static ServerSendsPlantMapper? _instance;
  static ServerSendsPlantMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServerSendsPlantMapper._());
      ServerEventMapper.ensureInitialized().addSubMapper(_instance!);
      PlantMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSendsPlant';

  static Plant _$plant(ServerSendsPlant v) => v.plant;
  static const Field<ServerSendsPlant, Plant> _f$plant =
      Field('plant', _$plant);
  static String _$eventType(ServerSendsPlant v) => v.eventType;
  static const Field<ServerSendsPlant, String> _f$eventType =
      Field('eventType', _$eventType, opt: true, def: "ServerSendsPlant");

  @override
  final MappableFields<ServerSendsPlant> fields = const {
    #plant: _f$plant,
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerSendsPlant';
  @override
  late final ClassMapperBase superMapper =
      ServerEventMapper.ensureInitialized();

  static ServerSendsPlant _instantiate(DecodingData data) {
    return ServerSendsPlant(
        plant: data.dec(_f$plant), eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSendsPlant fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerSendsPlant>(map);
  }

  static ServerSendsPlant fromJson(String json) {
    return ensureInitialized().decodeJson<ServerSendsPlant>(json);
  }
}

mixin ServerSendsPlantMappable {
  String toJson() {
    return ServerSendsPlantMapper.ensureInitialized()
        .encodeJson<ServerSendsPlant>(this as ServerSendsPlant);
  }

  Map<String, dynamic> toMap() {
    return ServerSendsPlantMapper.ensureInitialized()
        .encodeMap<ServerSendsPlant>(this as ServerSendsPlant);
  }

  ServerSendsPlantCopyWith<ServerSendsPlant, ServerSendsPlant, ServerSendsPlant>
      get copyWith => _ServerSendsPlantCopyWithImpl(
          this as ServerSendsPlant, $identity, $identity);
  @override
  String toString() {
    return ServerSendsPlantMapper.ensureInitialized()
        .stringifyValue(this as ServerSendsPlant);
  }

  @override
  bool operator ==(Object other) {
    return ServerSendsPlantMapper.ensureInitialized()
        .equalsValue(this as ServerSendsPlant, other);
  }

  @override
  int get hashCode {
    return ServerSendsPlantMapper.ensureInitialized()
        .hashValue(this as ServerSendsPlant);
  }
}

extension ServerSendsPlantValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSendsPlant, $Out> {
  ServerSendsPlantCopyWith<$R, ServerSendsPlant, $Out>
      get $asServerSendsPlant =>
          $base.as((v, t, t2) => _ServerSendsPlantCopyWithImpl(v, t, t2));
}

abstract class ServerSendsPlantCopyWith<$R, $In extends ServerSendsPlant, $Out>
    implements ServerEventCopyWith<$R, $In, $Out> {
  PlantCopyWith<$R, Plant, Plant> get plant;
  @override
  $R call({Plant? plant, String? eventType});
  ServerSendsPlantCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerSendsPlantCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSendsPlant, $Out>
    implements ServerSendsPlantCopyWith<$R, ServerSendsPlant, $Out> {
  _ServerSendsPlantCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSendsPlant> $mapper =
      ServerSendsPlantMapper.ensureInitialized();
  @override
  PlantCopyWith<$R, Plant, Plant> get plant =>
      $value.plant.copyWith.$chain((v) => call(plant: v));
  @override
  $R call({Plant? plant, String? eventType}) => $apply(FieldCopyWithData({
        if (plant != null) #plant: plant,
        if (eventType != null) #eventType: eventType
      }));
  @override
  ServerSendsPlant $make(CopyWithData data) => ServerSendsPlant(
      plant: data.get(#plant, or: $value.plant),
      eventType: data.get(#eventType, or: $value.eventType));

  @override
  ServerSendsPlantCopyWith<$R2, ServerSendsPlant, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServerSendsPlantCopyWithImpl($value, $cast, t);
}

class ServerSavesPlantMapper extends SubClassMapperBase<ServerSavesPlant> {
  ServerSavesPlantMapper._();

  static ServerSavesPlantMapper? _instance;
  static ServerSavesPlantMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServerSavesPlantMapper._());
      ServerEventMapper.ensureInitialized().addSubMapper(_instance!);
      PlantMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSavesPlant';

  static Plant _$plant(ServerSavesPlant v) => v.plant;
  static const Field<ServerSavesPlant, Plant> _f$plant =
      Field('plant', _$plant);
  static String _$eventType(ServerSavesPlant v) => v.eventType;
  static const Field<ServerSavesPlant, String> _f$eventType =
      Field('eventType', _$eventType, opt: true, def: "ServerSavesPlant");

  @override
  final MappableFields<ServerSavesPlant> fields = const {
    #plant: _f$plant,
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerSavesPlant';
  @override
  late final ClassMapperBase superMapper =
      ServerEventMapper.ensureInitialized();

  static ServerSavesPlant _instantiate(DecodingData data) {
    return ServerSavesPlant(
        plant: data.dec(_f$plant), eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSavesPlant fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerSavesPlant>(map);
  }

  static ServerSavesPlant fromJson(String json) {
    return ensureInitialized().decodeJson<ServerSavesPlant>(json);
  }
}

mixin ServerSavesPlantMappable {
  String toJson() {
    return ServerSavesPlantMapper.ensureInitialized()
        .encodeJson<ServerSavesPlant>(this as ServerSavesPlant);
  }

  Map<String, dynamic> toMap() {
    return ServerSavesPlantMapper.ensureInitialized()
        .encodeMap<ServerSavesPlant>(this as ServerSavesPlant);
  }

  ServerSavesPlantCopyWith<ServerSavesPlant, ServerSavesPlant, ServerSavesPlant>
      get copyWith => _ServerSavesPlantCopyWithImpl(
          this as ServerSavesPlant, $identity, $identity);
  @override
  String toString() {
    return ServerSavesPlantMapper.ensureInitialized()
        .stringifyValue(this as ServerSavesPlant);
  }

  @override
  bool operator ==(Object other) {
    return ServerSavesPlantMapper.ensureInitialized()
        .equalsValue(this as ServerSavesPlant, other);
  }

  @override
  int get hashCode {
    return ServerSavesPlantMapper.ensureInitialized()
        .hashValue(this as ServerSavesPlant);
  }
}

extension ServerSavesPlantValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSavesPlant, $Out> {
  ServerSavesPlantCopyWith<$R, ServerSavesPlant, $Out>
      get $asServerSavesPlant =>
          $base.as((v, t, t2) => _ServerSavesPlantCopyWithImpl(v, t, t2));
}

abstract class ServerSavesPlantCopyWith<$R, $In extends ServerSavesPlant, $Out>
    implements ServerEventCopyWith<$R, $In, $Out> {
  PlantCopyWith<$R, Plant, Plant> get plant;
  @override
  $R call({Plant? plant, String? eventType});
  ServerSavesPlantCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerSavesPlantCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSavesPlant, $Out>
    implements ServerSavesPlantCopyWith<$R, ServerSavesPlant, $Out> {
  _ServerSavesPlantCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSavesPlant> $mapper =
      ServerSavesPlantMapper.ensureInitialized();
  @override
  PlantCopyWith<$R, Plant, Plant> get plant =>
      $value.plant.copyWith.$chain((v) => call(plant: v));
  @override
  $R call({Plant? plant, String? eventType}) => $apply(FieldCopyWithData({
        if (plant != null) #plant: plant,
        if (eventType != null) #eventType: eventType
      }));
  @override
  ServerSavesPlant $make(CopyWithData data) => ServerSavesPlant(
      plant: data.get(#plant, or: $value.plant),
      eventType: data.get(#eventType, or: $value.eventType));

  @override
  ServerSavesPlantCopyWith<$R2, ServerSavesPlant, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServerSavesPlantCopyWithImpl($value, $cast, t);
}

class ServerConfirmsUpdateMapper
    extends SubClassMapperBase<ServerConfirmsUpdate> {
  ServerConfirmsUpdateMapper._();

  static ServerConfirmsUpdateMapper? _instance;
  static ServerConfirmsUpdateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServerConfirmsUpdateMapper._());
      ServerEventMapper.ensureInitialized().addSubMapper(_instance!);
      GetUserDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerConfirmsUpdate';

  static String _$eventType(ServerConfirmsUpdate v) => v.eventType;
  static const Field<ServerConfirmsUpdate, String> _f$eventType =
      Field('eventType', _$eventType, opt: true, def: "ServerConfirmsUpdate");
  static GetUserDto _$getUserDto(ServerConfirmsUpdate v) => v.getUserDto;
  static const Field<ServerConfirmsUpdate, GetUserDto> _f$getUserDto =
      Field('getUserDto', _$getUserDto);

  @override
  final MappableFields<ServerConfirmsUpdate> fields = const {
    #eventType: _f$eventType,
    #getUserDto: _f$getUserDto,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerConfirmsUpdate';
  @override
  late final ClassMapperBase superMapper =
      ServerEventMapper.ensureInitialized();

  static ServerConfirmsUpdate _instantiate(DecodingData data) {
    return ServerConfirmsUpdate(
        eventType: data.dec(_f$eventType), getUserDto: data.dec(_f$getUserDto));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerConfirmsUpdate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerConfirmsUpdate>(map);
  }

  static ServerConfirmsUpdate fromJson(String json) {
    return ensureInitialized().decodeJson<ServerConfirmsUpdate>(json);
  }
}

mixin ServerConfirmsUpdateMappable {
  String toJson() {
    return ServerConfirmsUpdateMapper.ensureInitialized()
        .encodeJson<ServerConfirmsUpdate>(this as ServerConfirmsUpdate);
  }

  Map<String, dynamic> toMap() {
    return ServerConfirmsUpdateMapper.ensureInitialized()
        .encodeMap<ServerConfirmsUpdate>(this as ServerConfirmsUpdate);
  }

  ServerConfirmsUpdateCopyWith<ServerConfirmsUpdate, ServerConfirmsUpdate,
          ServerConfirmsUpdate>
      get copyWith => _ServerConfirmsUpdateCopyWithImpl(
          this as ServerConfirmsUpdate, $identity, $identity);
  @override
  String toString() {
    return ServerConfirmsUpdateMapper.ensureInitialized()
        .stringifyValue(this as ServerConfirmsUpdate);
  }

  @override
  bool operator ==(Object other) {
    return ServerConfirmsUpdateMapper.ensureInitialized()
        .equalsValue(this as ServerConfirmsUpdate, other);
  }

  @override
  int get hashCode {
    return ServerConfirmsUpdateMapper.ensureInitialized()
        .hashValue(this as ServerConfirmsUpdate);
  }
}

extension ServerConfirmsUpdateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerConfirmsUpdate, $Out> {
  ServerConfirmsUpdateCopyWith<$R, ServerConfirmsUpdate, $Out>
      get $asServerConfirmsUpdate =>
          $base.as((v, t, t2) => _ServerConfirmsUpdateCopyWithImpl(v, t, t2));
}

abstract class ServerConfirmsUpdateCopyWith<
    $R,
    $In extends ServerConfirmsUpdate,
    $Out> implements ServerEventCopyWith<$R, $In, $Out> {
  GetUserDtoCopyWith<$R, GetUserDto, GetUserDto> get getUserDto;
  @override
  $R call({String? eventType, GetUserDto? getUserDto});
  ServerConfirmsUpdateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerConfirmsUpdateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerConfirmsUpdate, $Out>
    implements ServerConfirmsUpdateCopyWith<$R, ServerConfirmsUpdate, $Out> {
  _ServerConfirmsUpdateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerConfirmsUpdate> $mapper =
      ServerConfirmsUpdateMapper.ensureInitialized();
  @override
  GetUserDtoCopyWith<$R, GetUserDto, GetUserDto> get getUserDto =>
      $value.getUserDto.copyWith.$chain((v) => call(getUserDto: v));
  @override
  $R call({String? eventType, GetUserDto? getUserDto}) =>
      $apply(FieldCopyWithData({
        if (eventType != null) #eventType: eventType,
        if (getUserDto != null) #getUserDto: getUserDto
      }));
  @override
  ServerConfirmsUpdate $make(CopyWithData data) => ServerConfirmsUpdate(
      eventType: data.get(#eventType, or: $value.eventType),
      getUserDto: data.get(#getUserDto, or: $value.getUserDto));

  @override
  ServerConfirmsUpdateCopyWith<$R2, ServerConfirmsUpdate, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerConfirmsUpdateCopyWithImpl($value, $cast, t);
}

class ServerConfirmsDeleteMapper
    extends SubClassMapperBase<ServerConfirmsDelete> {
  ServerConfirmsDeleteMapper._();

  static ServerConfirmsDeleteMapper? _instance;
  static ServerConfirmsDeleteMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServerConfirmsDeleteMapper._());
      ServerEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ServerConfirmsDelete';

  static String _$eventType(ServerConfirmsDelete v) => v.eventType;
  static const Field<ServerConfirmsDelete, String> _f$eventType =
      Field('eventType', _$eventType, opt: true, def: "ServerConfirmsDelete");

  @override
  final MappableFields<ServerConfirmsDelete> fields = const {
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerConfirmsDelete';
  @override
  late final ClassMapperBase superMapper =
      ServerEventMapper.ensureInitialized();

  static ServerConfirmsDelete _instantiate(DecodingData data) {
    return ServerConfirmsDelete(eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerConfirmsDelete fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerConfirmsDelete>(map);
  }

  static ServerConfirmsDelete fromJson(String json) {
    return ensureInitialized().decodeJson<ServerConfirmsDelete>(json);
  }
}

mixin ServerConfirmsDeleteMappable {
  String toJson() {
    return ServerConfirmsDeleteMapper.ensureInitialized()
        .encodeJson<ServerConfirmsDelete>(this as ServerConfirmsDelete);
  }

  Map<String, dynamic> toMap() {
    return ServerConfirmsDeleteMapper.ensureInitialized()
        .encodeMap<ServerConfirmsDelete>(this as ServerConfirmsDelete);
  }

  ServerConfirmsDeleteCopyWith<ServerConfirmsDelete, ServerConfirmsDelete,
          ServerConfirmsDelete>
      get copyWith => _ServerConfirmsDeleteCopyWithImpl(
          this as ServerConfirmsDelete, $identity, $identity);
  @override
  String toString() {
    return ServerConfirmsDeleteMapper.ensureInitialized()
        .stringifyValue(this as ServerConfirmsDelete);
  }

  @override
  bool operator ==(Object other) {
    return ServerConfirmsDeleteMapper.ensureInitialized()
        .equalsValue(this as ServerConfirmsDelete, other);
  }

  @override
  int get hashCode {
    return ServerConfirmsDeleteMapper.ensureInitialized()
        .hashValue(this as ServerConfirmsDelete);
  }
}

extension ServerConfirmsDeleteValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerConfirmsDelete, $Out> {
  ServerConfirmsDeleteCopyWith<$R, ServerConfirmsDelete, $Out>
      get $asServerConfirmsDelete =>
          $base.as((v, t, t2) => _ServerConfirmsDeleteCopyWithImpl(v, t, t2));
}

abstract class ServerConfirmsDeleteCopyWith<
    $R,
    $In extends ServerConfirmsDelete,
    $Out> implements ServerEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? eventType});
  ServerConfirmsDeleteCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerConfirmsDeleteCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerConfirmsDelete, $Out>
    implements ServerConfirmsDeleteCopyWith<$R, ServerConfirmsDelete, $Out> {
  _ServerConfirmsDeleteCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerConfirmsDelete> $mapper =
      ServerConfirmsDeleteMapper.ensureInitialized();
  @override
  $R call({String? eventType}) =>
      $apply(FieldCopyWithData({if (eventType != null) #eventType: eventType}));
  @override
  ServerConfirmsDelete $make(CopyWithData data) => ServerConfirmsDelete(
      eventType: data.get(#eventType, or: $value.eventType));

  @override
  ServerConfirmsDeleteCopyWith<$R2, ServerConfirmsDelete, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerConfirmsDeleteCopyWithImpl($value, $cast, t);
}

class ServerSendsUserInfoMapper
    extends SubClassMapperBase<ServerSendsUserInfo> {
  ServerSendsUserInfoMapper._();

  static ServerSendsUserInfoMapper? _instance;
  static ServerSendsUserInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServerSendsUserInfoMapper._());
      ServerEventMapper.ensureInitialized().addSubMapper(_instance!);
      GetUserDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSendsUserInfo';

  static GetUserDto _$getUserDto(ServerSendsUserInfo v) => v.getUserDto;
  static const Field<ServerSendsUserInfo, GetUserDto> _f$getUserDto =
      Field('getUserDto', _$getUserDto);
  static String _$eventType(ServerSendsUserInfo v) => v.eventType;
  static const Field<ServerSendsUserInfo, String> _f$eventType =
      Field('eventType', _$eventType, opt: true, def: "ServerSendsUserInfo");

  @override
  final MappableFields<ServerSendsUserInfo> fields = const {
    #getUserDto: _f$getUserDto,
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerSendsUserInfo';
  @override
  late final ClassMapperBase superMapper =
      ServerEventMapper.ensureInitialized();

  static ServerSendsUserInfo _instantiate(DecodingData data) {
    return ServerSendsUserInfo(
        getUserDto: data.dec(_f$getUserDto), eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSendsUserInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerSendsUserInfo>(map);
  }

  static ServerSendsUserInfo fromJson(String json) {
    return ensureInitialized().decodeJson<ServerSendsUserInfo>(json);
  }
}

mixin ServerSendsUserInfoMappable {
  String toJson() {
    return ServerSendsUserInfoMapper.ensureInitialized()
        .encodeJson<ServerSendsUserInfo>(this as ServerSendsUserInfo);
  }

  Map<String, dynamic> toMap() {
    return ServerSendsUserInfoMapper.ensureInitialized()
        .encodeMap<ServerSendsUserInfo>(this as ServerSendsUserInfo);
  }

  ServerSendsUserInfoCopyWith<ServerSendsUserInfo, ServerSendsUserInfo,
          ServerSendsUserInfo>
      get copyWith => _ServerSendsUserInfoCopyWithImpl(
          this as ServerSendsUserInfo, $identity, $identity);
  @override
  String toString() {
    return ServerSendsUserInfoMapper.ensureInitialized()
        .stringifyValue(this as ServerSendsUserInfo);
  }

  @override
  bool operator ==(Object other) {
    return ServerSendsUserInfoMapper.ensureInitialized()
        .equalsValue(this as ServerSendsUserInfo, other);
  }

  @override
  int get hashCode {
    return ServerSendsUserInfoMapper.ensureInitialized()
        .hashValue(this as ServerSendsUserInfo);
  }
}

extension ServerSendsUserInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSendsUserInfo, $Out> {
  ServerSendsUserInfoCopyWith<$R, ServerSendsUserInfo, $Out>
      get $asServerSendsUserInfo =>
          $base.as((v, t, t2) => _ServerSendsUserInfoCopyWithImpl(v, t, t2));
}

abstract class ServerSendsUserInfoCopyWith<$R, $In extends ServerSendsUserInfo,
    $Out> implements ServerEventCopyWith<$R, $In, $Out> {
  GetUserDtoCopyWith<$R, GetUserDto, GetUserDto> get getUserDto;
  @override
  $R call({GetUserDto? getUserDto, String? eventType});
  ServerSendsUserInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerSendsUserInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSendsUserInfo, $Out>
    implements ServerSendsUserInfoCopyWith<$R, ServerSendsUserInfo, $Out> {
  _ServerSendsUserInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSendsUserInfo> $mapper =
      ServerSendsUserInfoMapper.ensureInitialized();
  @override
  GetUserDtoCopyWith<$R, GetUserDto, GetUserDto> get getUserDto =>
      $value.getUserDto.copyWith.$chain((v) => call(getUserDto: v));
  @override
  $R call({GetUserDto? getUserDto, String? eventType}) =>
      $apply(FieldCopyWithData({
        if (getUserDto != null) #getUserDto: getUserDto,
        if (eventType != null) #eventType: eventType
      }));
  @override
  ServerSendsUserInfo $make(CopyWithData data) => ServerSendsUserInfo(
      getUserDto: data.get(#getUserDto, or: $value.getUserDto),
      eventType: data.get(#eventType, or: $value.eventType));

  @override
  ServerSendsUserInfoCopyWith<$R2, ServerSendsUserInfo, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerSendsUserInfoCopyWithImpl($value, $cast, t);
}

class ServerSendsLatestConditionsForPlantMapper
    extends SubClassMapperBase<ServerSendsLatestConditionsForPlant> {
  ServerSendsLatestConditionsForPlantMapper._();

  static ServerSendsLatestConditionsForPlantMapper? _instance;
  static ServerSendsLatestConditionsForPlantMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerSendsLatestConditionsForPlantMapper._());
      ServerEventMapper.ensureInitialized().addSubMapper(_instance!);
      ConditionsLogMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSendsLatestConditionsForPlant';

  static ConditionsLog _$conditionsLog(ServerSendsLatestConditionsForPlant v) =>
      v.conditionsLog;
  static const Field<ServerSendsLatestConditionsForPlant, ConditionsLog>
      _f$conditionsLog = Field('conditionsLog', _$conditionsLog);
  static String _$eventType(ServerSendsLatestConditionsForPlant v) =>
      v.eventType;
  static const Field<ServerSendsLatestConditionsForPlant, String> _f$eventType =
      Field('eventType', _$eventType,
          opt: true, def: "ServerSendsLatestConditionsForPlant");

  @override
  final MappableFields<ServerSendsLatestConditionsForPlant> fields = const {
    #conditionsLog: _f$conditionsLog,
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerSendsLatestConditionsForPlant';
  @override
  late final ClassMapperBase superMapper =
      ServerEventMapper.ensureInitialized();

  static ServerSendsLatestConditionsForPlant _instantiate(DecodingData data) {
    return ServerSendsLatestConditionsForPlant(
        conditionsLog: data.dec(_f$conditionsLog),
        eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSendsLatestConditionsForPlant fromMap(Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<ServerSendsLatestConditionsForPlant>(map);
  }

  static ServerSendsLatestConditionsForPlant fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ServerSendsLatestConditionsForPlant>(json);
  }
}

mixin ServerSendsLatestConditionsForPlantMappable {
  String toJson() {
    return ServerSendsLatestConditionsForPlantMapper.ensureInitialized()
        .encodeJson<ServerSendsLatestConditionsForPlant>(
            this as ServerSendsLatestConditionsForPlant);
  }

  Map<String, dynamic> toMap() {
    return ServerSendsLatestConditionsForPlantMapper.ensureInitialized()
        .encodeMap<ServerSendsLatestConditionsForPlant>(
            this as ServerSendsLatestConditionsForPlant);
  }

  ServerSendsLatestConditionsForPlantCopyWith<
          ServerSendsLatestConditionsForPlant,
          ServerSendsLatestConditionsForPlant,
          ServerSendsLatestConditionsForPlant>
      get copyWith => _ServerSendsLatestConditionsForPlantCopyWithImpl(
          this as ServerSendsLatestConditionsForPlant, $identity, $identity);
  @override
  String toString() {
    return ServerSendsLatestConditionsForPlantMapper.ensureInitialized()
        .stringifyValue(this as ServerSendsLatestConditionsForPlant);
  }

  @override
  bool operator ==(Object other) {
    return ServerSendsLatestConditionsForPlantMapper.ensureInitialized()
        .equalsValue(this as ServerSendsLatestConditionsForPlant, other);
  }

  @override
  int get hashCode {
    return ServerSendsLatestConditionsForPlantMapper.ensureInitialized()
        .hashValue(this as ServerSendsLatestConditionsForPlant);
  }
}

extension ServerSendsLatestConditionsForPlantValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSendsLatestConditionsForPlant, $Out> {
  ServerSendsLatestConditionsForPlantCopyWith<$R,
          ServerSendsLatestConditionsForPlant, $Out>
      get $asServerSendsLatestConditionsForPlant => $base.as((v, t, t2) =>
          _ServerSendsLatestConditionsForPlantCopyWithImpl(v, t, t2));
}

abstract class ServerSendsLatestConditionsForPlantCopyWith<
    $R,
    $In extends ServerSendsLatestConditionsForPlant,
    $Out> implements ServerEventCopyWith<$R, $In, $Out> {
  ConditionsLogCopyWith<$R, ConditionsLog, ConditionsLog> get conditionsLog;
  @override
  $R call({ConditionsLog? conditionsLog, String? eventType});
  ServerSendsLatestConditionsForPlantCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ServerSendsLatestConditionsForPlantCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSendsLatestConditionsForPlant, $Out>
    implements
        ServerSendsLatestConditionsForPlantCopyWith<$R,
            ServerSendsLatestConditionsForPlant, $Out> {
  _ServerSendsLatestConditionsForPlantCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSendsLatestConditionsForPlant> $mapper =
      ServerSendsLatestConditionsForPlantMapper.ensureInitialized();
  @override
  ConditionsLogCopyWith<$R, ConditionsLog, ConditionsLog> get conditionsLog =>
      $value.conditionsLog.copyWith.$chain((v) => call(conditionsLog: v));
  @override
  $R call({ConditionsLog? conditionsLog, String? eventType}) =>
      $apply(FieldCopyWithData({
        if (conditionsLog != null) #conditionsLog: conditionsLog,
        if (eventType != null) #eventType: eventType
      }));
  @override
  ServerSendsLatestConditionsForPlant $make(CopyWithData data) =>
      ServerSendsLatestConditionsForPlant(
          conditionsLog: data.get(#conditionsLog, or: $value.conditionsLog),
          eventType: data.get(#eventType, or: $value.eventType));

  @override
  ServerSendsLatestConditionsForPlantCopyWith<$R2,
      ServerSendsLatestConditionsForPlant, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServerSendsLatestConditionsForPlantCopyWithImpl($value, $cast, t);
}

class ServerLogsUserOutMapper extends SubClassMapperBase<ServerLogsUserOut> {
  ServerLogsUserOutMapper._();

  static ServerLogsUserOutMapper? _instance;
  static ServerLogsUserOutMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServerLogsUserOutMapper._());
      ServerEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ServerLogsUserOut';

  static String _$eventType(ServerLogsUserOut v) => v.eventType;
  static const Field<ServerLogsUserOut, String> _f$eventType =
      Field('eventType', _$eventType, opt: true, def: "ServerLogsUserOut");

  @override
  final MappableFields<ServerLogsUserOut> fields = const {
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerLogsUserOut';
  @override
  late final ClassMapperBase superMapper =
      ServerEventMapper.ensureInitialized();

  static ServerLogsUserOut _instantiate(DecodingData data) {
    return ServerLogsUserOut(eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerLogsUserOut fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerLogsUserOut>(map);
  }

  static ServerLogsUserOut fromJson(String json) {
    return ensureInitialized().decodeJson<ServerLogsUserOut>(json);
  }
}

mixin ServerLogsUserOutMappable {
  String toJson() {
    return ServerLogsUserOutMapper.ensureInitialized()
        .encodeJson<ServerLogsUserOut>(this as ServerLogsUserOut);
  }

  Map<String, dynamic> toMap() {
    return ServerLogsUserOutMapper.ensureInitialized()
        .encodeMap<ServerLogsUserOut>(this as ServerLogsUserOut);
  }

  ServerLogsUserOutCopyWith<ServerLogsUserOut, ServerLogsUserOut,
          ServerLogsUserOut>
      get copyWith => _ServerLogsUserOutCopyWithImpl(
          this as ServerLogsUserOut, $identity, $identity);
  @override
  String toString() {
    return ServerLogsUserOutMapper.ensureInitialized()
        .stringifyValue(this as ServerLogsUserOut);
  }

  @override
  bool operator ==(Object other) {
    return ServerLogsUserOutMapper.ensureInitialized()
        .equalsValue(this as ServerLogsUserOut, other);
  }

  @override
  int get hashCode {
    return ServerLogsUserOutMapper.ensureInitialized()
        .hashValue(this as ServerLogsUserOut);
  }
}

extension ServerLogsUserOutValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerLogsUserOut, $Out> {
  ServerLogsUserOutCopyWith<$R, ServerLogsUserOut, $Out>
      get $asServerLogsUserOut =>
          $base.as((v, t, t2) => _ServerLogsUserOutCopyWithImpl(v, t, t2));
}

abstract class ServerLogsUserOutCopyWith<$R, $In extends ServerLogsUserOut,
    $Out> implements ServerEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? eventType});
  ServerLogsUserOutCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerLogsUserOutCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerLogsUserOut, $Out>
    implements ServerLogsUserOutCopyWith<$R, ServerLogsUserOut, $Out> {
  _ServerLogsUserOutCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerLogsUserOut> $mapper =
      ServerLogsUserOutMapper.ensureInitialized();
  @override
  $R call({String? eventType}) =>
      $apply(FieldCopyWithData({if (eventType != null) #eventType: eventType}));
  @override
  ServerLogsUserOut $make(CopyWithData data) =>
      ServerLogsUserOut(eventType: data.get(#eventType, or: $value.eventType));

  @override
  ServerLogsUserOutCopyWith<$R2, ServerLogsUserOut, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServerLogsUserOutCopyWithImpl($value, $cast, t);
}

class ServerSendsAllCollectionsMapper
    extends SubClassMapperBase<ServerSendsAllCollections> {
  ServerSendsAllCollectionsMapper._();

  static ServerSendsAllCollectionsMapper? _instance;
  static ServerSendsAllCollectionsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerSendsAllCollectionsMapper._());
      ServerEventMapper.ensureInitialized().addSubMapper(_instance!);
      GetCollectionDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSendsAllCollections';

  static String _$eventType(ServerSendsAllCollections v) => v.eventType;
  static const Field<ServerSendsAllCollections, String> _f$eventType = Field(
      'eventType', _$eventType,
      opt: true, def: "ServerSendsAllCollections");
  static List<GetCollectionDto> _$collections(ServerSendsAllCollections v) =>
      v.collections;
  static const Field<ServerSendsAllCollections, List<GetCollectionDto>>
      _f$collections = Field('collections', _$collections);

  @override
  final MappableFields<ServerSendsAllCollections> fields = const {
    #eventType: _f$eventType,
    #collections: _f$collections,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerSendsAllCollections';
  @override
  late final ClassMapperBase superMapper =
      ServerEventMapper.ensureInitialized();

  static ServerSendsAllCollections _instantiate(DecodingData data) {
    return ServerSendsAllCollections(
        eventType: data.dec(_f$eventType),
        collections: data.dec(_f$collections));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSendsAllCollections fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerSendsAllCollections>(map);
  }

  static ServerSendsAllCollections fromJson(String json) {
    return ensureInitialized().decodeJson<ServerSendsAllCollections>(json);
  }
}

mixin ServerSendsAllCollectionsMappable {
  String toJson() {
    return ServerSendsAllCollectionsMapper.ensureInitialized()
        .encodeJson<ServerSendsAllCollections>(
            this as ServerSendsAllCollections);
  }

  Map<String, dynamic> toMap() {
    return ServerSendsAllCollectionsMapper.ensureInitialized()
        .encodeMap<ServerSendsAllCollections>(
            this as ServerSendsAllCollections);
  }

  ServerSendsAllCollectionsCopyWith<ServerSendsAllCollections,
          ServerSendsAllCollections, ServerSendsAllCollections>
      get copyWith => _ServerSendsAllCollectionsCopyWithImpl(
          this as ServerSendsAllCollections, $identity, $identity);
  @override
  String toString() {
    return ServerSendsAllCollectionsMapper.ensureInitialized()
        .stringifyValue(this as ServerSendsAllCollections);
  }

  @override
  bool operator ==(Object other) {
    return ServerSendsAllCollectionsMapper.ensureInitialized()
        .equalsValue(this as ServerSendsAllCollections, other);
  }

  @override
  int get hashCode {
    return ServerSendsAllCollectionsMapper.ensureInitialized()
        .hashValue(this as ServerSendsAllCollections);
  }
}

extension ServerSendsAllCollectionsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSendsAllCollections, $Out> {
  ServerSendsAllCollectionsCopyWith<$R, ServerSendsAllCollections, $Out>
      get $asServerSendsAllCollections => $base
          .as((v, t, t2) => _ServerSendsAllCollectionsCopyWithImpl(v, t, t2));
}

abstract class ServerSendsAllCollectionsCopyWith<
    $R,
    $In extends ServerSendsAllCollections,
    $Out> implements ServerEventCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, GetCollectionDto,
          GetCollectionDtoCopyWith<$R, GetCollectionDto, GetCollectionDto>>
      get collections;
  @override
  $R call({String? eventType, List<GetCollectionDto>? collections});
  ServerSendsAllCollectionsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerSendsAllCollectionsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSendsAllCollections, $Out>
    implements
        ServerSendsAllCollectionsCopyWith<$R, ServerSendsAllCollections, $Out> {
  _ServerSendsAllCollectionsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSendsAllCollections> $mapper =
      ServerSendsAllCollectionsMapper.ensureInitialized();
  @override
  ListCopyWith<$R, GetCollectionDto,
          GetCollectionDtoCopyWith<$R, GetCollectionDto, GetCollectionDto>>
      get collections => ListCopyWith($value.collections,
          (v, t) => v.copyWith.$chain(t), (v) => call(collections: v));
  @override
  $R call({String? eventType, List<GetCollectionDto>? collections}) =>
      $apply(FieldCopyWithData({
        if (eventType != null) #eventType: eventType,
        if (collections != null) #collections: collections
      }));
  @override
  ServerSendsAllCollections $make(CopyWithData data) =>
      ServerSendsAllCollections(
          eventType: data.get(#eventType, or: $value.eventType),
          collections: data.get(#collections, or: $value.collections));

  @override
  ServerSendsAllCollectionsCopyWith<$R2, ServerSendsAllCollections, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerSendsAllCollectionsCopyWithImpl($value, $cast, t);
}

class ServerSendsPlantsMapper extends SubClassMapperBase<ServerSendsPlants> {
  ServerSendsPlantsMapper._();

  static ServerSendsPlantsMapper? _instance;
  static ServerSendsPlantsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServerSendsPlantsMapper._());
      ServerEventMapper.ensureInitialized().addSubMapper(_instance!);
      PlantMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSendsPlants';

  static List<Plant> _$plants(ServerSendsPlants v) => v.plants;
  static const Field<ServerSendsPlants, List<Plant>> _f$plants =
      Field('plants', _$plants);
  static String? _$collectionId(ServerSendsPlants v) => v.collectionId;
  static const Field<ServerSendsPlants, String> _f$collectionId =
      Field('collectionId', _$collectionId, opt: true);
  static String _$eventType(ServerSendsPlants v) => v.eventType;
  static const Field<ServerSendsPlants, String> _f$eventType =
      Field('eventType', _$eventType, opt: true, def: "ServerSendsPlants");

  @override
  final MappableFields<ServerSendsPlants> fields = const {
    #plants: _f$plants,
    #collectionId: _f$collectionId,
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerSendsPlants';
  @override
  late final ClassMapperBase superMapper =
      ServerEventMapper.ensureInitialized();

  static ServerSendsPlants _instantiate(DecodingData data) {
    return ServerSendsPlants(
        plants: data.dec(_f$plants),
        collectionId: data.dec(_f$collectionId),
        eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSendsPlants fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerSendsPlants>(map);
  }

  static ServerSendsPlants fromJson(String json) {
    return ensureInitialized().decodeJson<ServerSendsPlants>(json);
  }
}

mixin ServerSendsPlantsMappable {
  String toJson() {
    return ServerSendsPlantsMapper.ensureInitialized()
        .encodeJson<ServerSendsPlants>(this as ServerSendsPlants);
  }

  Map<String, dynamic> toMap() {
    return ServerSendsPlantsMapper.ensureInitialized()
        .encodeMap<ServerSendsPlants>(this as ServerSendsPlants);
  }

  ServerSendsPlantsCopyWith<ServerSendsPlants, ServerSendsPlants,
          ServerSendsPlants>
      get copyWith => _ServerSendsPlantsCopyWithImpl(
          this as ServerSendsPlants, $identity, $identity);
  @override
  String toString() {
    return ServerSendsPlantsMapper.ensureInitialized()
        .stringifyValue(this as ServerSendsPlants);
  }

  @override
  bool operator ==(Object other) {
    return ServerSendsPlantsMapper.ensureInitialized()
        .equalsValue(this as ServerSendsPlants, other);
  }

  @override
  int get hashCode {
    return ServerSendsPlantsMapper.ensureInitialized()
        .hashValue(this as ServerSendsPlants);
  }
}

extension ServerSendsPlantsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSendsPlants, $Out> {
  ServerSendsPlantsCopyWith<$R, ServerSendsPlants, $Out>
      get $asServerSendsPlants =>
          $base.as((v, t, t2) => _ServerSendsPlantsCopyWithImpl(v, t, t2));
}

abstract class ServerSendsPlantsCopyWith<$R, $In extends ServerSendsPlants,
    $Out> implements ServerEventCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Plant, PlantCopyWith<$R, Plant, Plant>> get plants;
  @override
  $R call({List<Plant>? plants, String? collectionId, String? eventType});
  ServerSendsPlantsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerSendsPlantsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSendsPlants, $Out>
    implements ServerSendsPlantsCopyWith<$R, ServerSendsPlants, $Out> {
  _ServerSendsPlantsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSendsPlants> $mapper =
      ServerSendsPlantsMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Plant, PlantCopyWith<$R, Plant, Plant>> get plants =>
      ListCopyWith($value.plants, (v, t) => v.copyWith.$chain(t),
          (v) => call(plants: v));
  @override
  $R call(
          {List<Plant>? plants,
          Object? collectionId = $none,
          String? eventType}) =>
      $apply(FieldCopyWithData({
        if (plants != null) #plants: plants,
        if (collectionId != $none) #collectionId: collectionId,
        if (eventType != null) #eventType: eventType
      }));
  @override
  ServerSendsPlants $make(CopyWithData data) => ServerSendsPlants(
      plants: data.get(#plants, or: $value.plants),
      collectionId: data.get(#collectionId, or: $value.collectionId),
      eventType: data.get(#eventType, or: $value.eventType));

  @override
  ServerSendsPlantsCopyWith<$R2, ServerSendsPlants, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServerSendsPlantsCopyWithImpl($value, $cast, t);
}

class ServerSavesCollectionMapper
    extends SubClassMapperBase<ServerSavesCollection> {
  ServerSavesCollectionMapper._();

  static ServerSavesCollectionMapper? _instance;
  static ServerSavesCollectionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServerSavesCollectionMapper._());
      ServerEventMapper.ensureInitialized().addSubMapper(_instance!);
      CollectionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSavesCollection';

  static Collection _$collection(ServerSavesCollection v) => v.collection;
  static const Field<ServerSavesCollection, Collection> _f$collection =
      Field('collection', _$collection);
  static String _$eventType(ServerSavesCollection v) => v.eventType;
  static const Field<ServerSavesCollection, String> _f$eventType =
      Field('eventType', _$eventType, opt: true, def: "ServerSavesCollection");

  @override
  final MappableFields<ServerSavesCollection> fields = const {
    #collection: _f$collection,
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerSavesCollection';
  @override
  late final ClassMapperBase superMapper =
      ServerEventMapper.ensureInitialized();

  static ServerSavesCollection _instantiate(DecodingData data) {
    return ServerSavesCollection(
        collection: data.dec(_f$collection), eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSavesCollection fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerSavesCollection>(map);
  }

  static ServerSavesCollection fromJson(String json) {
    return ensureInitialized().decodeJson<ServerSavesCollection>(json);
  }
}

mixin ServerSavesCollectionMappable {
  String toJson() {
    return ServerSavesCollectionMapper.ensureInitialized()
        .encodeJson<ServerSavesCollection>(this as ServerSavesCollection);
  }

  Map<String, dynamic> toMap() {
    return ServerSavesCollectionMapper.ensureInitialized()
        .encodeMap<ServerSavesCollection>(this as ServerSavesCollection);
  }

  ServerSavesCollectionCopyWith<ServerSavesCollection, ServerSavesCollection,
          ServerSavesCollection>
      get copyWith => _ServerSavesCollectionCopyWithImpl(
          this as ServerSavesCollection, $identity, $identity);
  @override
  String toString() {
    return ServerSavesCollectionMapper.ensureInitialized()
        .stringifyValue(this as ServerSavesCollection);
  }

  @override
  bool operator ==(Object other) {
    return ServerSavesCollectionMapper.ensureInitialized()
        .equalsValue(this as ServerSavesCollection, other);
  }

  @override
  int get hashCode {
    return ServerSavesCollectionMapper.ensureInitialized()
        .hashValue(this as ServerSavesCollection);
  }
}

extension ServerSavesCollectionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSavesCollection, $Out> {
  ServerSavesCollectionCopyWith<$R, ServerSavesCollection, $Out>
      get $asServerSavesCollection =>
          $base.as((v, t, t2) => _ServerSavesCollectionCopyWithImpl(v, t, t2));
}

abstract class ServerSavesCollectionCopyWith<
    $R,
    $In extends ServerSavesCollection,
    $Out> implements ServerEventCopyWith<$R, $In, $Out> {
  CollectionCopyWith<$R, Collection, Collection> get collection;
  @override
  $R call({Collection? collection, String? eventType});
  ServerSavesCollectionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerSavesCollectionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSavesCollection, $Out>
    implements ServerSavesCollectionCopyWith<$R, ServerSavesCollection, $Out> {
  _ServerSavesCollectionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSavesCollection> $mapper =
      ServerSavesCollectionMapper.ensureInitialized();
  @override
  CollectionCopyWith<$R, Collection, Collection> get collection =>
      $value.collection.copyWith.$chain((v) => call(collection: v));
  @override
  $R call({Collection? collection, String? eventType}) =>
      $apply(FieldCopyWithData({
        if (collection != null) #collection: collection,
        if (eventType != null) #eventType: eventType
      }));
  @override
  ServerSavesCollection $make(CopyWithData data) => ServerSavesCollection(
      collection: data.get(#collection, or: $value.collection),
      eventType: data.get(#eventType, or: $value.eventType));

  @override
  ServerSavesCollectionCopyWith<$R2, ServerSavesCollection, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerSavesCollectionCopyWithImpl($value, $cast, t);
}

class ServerDeletesCollectionMapper
    extends SubClassMapperBase<ServerDeletesCollection> {
  ServerDeletesCollectionMapper._();

  static ServerDeletesCollectionMapper? _instance;
  static ServerDeletesCollectionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerDeletesCollectionMapper._());
      ServerEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ServerDeletesCollection';

  static String _$eventType(ServerDeletesCollection v) => v.eventType;
  static const Field<ServerDeletesCollection, String> _f$eventType = Field(
      'eventType', _$eventType,
      opt: true, def: "ServerDeletesCollection");

  @override
  final MappableFields<ServerDeletesCollection> fields = const {
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerDeletesCollection';
  @override
  late final ClassMapperBase superMapper =
      ServerEventMapper.ensureInitialized();

  static ServerDeletesCollection _instantiate(DecodingData data) {
    return ServerDeletesCollection(eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerDeletesCollection fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerDeletesCollection>(map);
  }

  static ServerDeletesCollection fromJson(String json) {
    return ensureInitialized().decodeJson<ServerDeletesCollection>(json);
  }
}

mixin ServerDeletesCollectionMappable {
  String toJson() {
    return ServerDeletesCollectionMapper.ensureInitialized()
        .encodeJson<ServerDeletesCollection>(this as ServerDeletesCollection);
  }

  Map<String, dynamic> toMap() {
    return ServerDeletesCollectionMapper.ensureInitialized()
        .encodeMap<ServerDeletesCollection>(this as ServerDeletesCollection);
  }

  ServerDeletesCollectionCopyWith<ServerDeletesCollection,
          ServerDeletesCollection, ServerDeletesCollection>
      get copyWith => _ServerDeletesCollectionCopyWithImpl(
          this as ServerDeletesCollection, $identity, $identity);
  @override
  String toString() {
    return ServerDeletesCollectionMapper.ensureInitialized()
        .stringifyValue(this as ServerDeletesCollection);
  }

  @override
  bool operator ==(Object other) {
    return ServerDeletesCollectionMapper.ensureInitialized()
        .equalsValue(this as ServerDeletesCollection, other);
  }

  @override
  int get hashCode {
    return ServerDeletesCollectionMapper.ensureInitialized()
        .hashValue(this as ServerDeletesCollection);
  }
}

extension ServerDeletesCollectionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerDeletesCollection, $Out> {
  ServerDeletesCollectionCopyWith<$R, ServerDeletesCollection, $Out>
      get $asServerDeletesCollection => $base
          .as((v, t, t2) => _ServerDeletesCollectionCopyWithImpl(v, t, t2));
}

abstract class ServerDeletesCollectionCopyWith<
    $R,
    $In extends ServerDeletesCollection,
    $Out> implements ServerEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? eventType});
  ServerDeletesCollectionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerDeletesCollectionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerDeletesCollection, $Out>
    implements
        ServerDeletesCollectionCopyWith<$R, ServerDeletesCollection, $Out> {
  _ServerDeletesCollectionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerDeletesCollection> $mapper =
      ServerDeletesCollectionMapper.ensureInitialized();
  @override
  $R call({String? eventType}) =>
      $apply(FieldCopyWithData({if (eventType != null) #eventType: eventType}));
  @override
  ServerDeletesCollection $make(CopyWithData data) => ServerDeletesCollection(
      eventType: data.get(#eventType, or: $value.eventType));

  @override
  ServerDeletesCollectionCopyWith<$R2, ServerDeletesCollection, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerDeletesCollectionCopyWithImpl($value, $cast, t);
}

class ServerSendsErrorMessageMapper
    extends SubClassMapperBase<ServerSendsErrorMessage> {
  ServerSendsErrorMessageMapper._();

  static ServerSendsErrorMessageMapper? _instance;
  static ServerSendsErrorMessageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerSendsErrorMessageMapper._());
      ServerEventMapper.ensureInitialized().addSubMapper(_instance!);
      ServerRejectsWrongCredentialsMapper.ensureInitialized();
      ServerRespondsNotAuthorizedMapper.ensureInitialized();
      ServerRespondsNotFoundMapper.ensureInitialized();
      ServerRespondsRegisterDeviceMapper.ensureInitialized();
      ServerRespondsValidationErrorMapper.ensureInitialized();
      ServerRejectsInvalidFileMapper.ensureInitialized();
      ServerRejectsUpdateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerSendsErrorMessage';

  static String _$error(ServerSendsErrorMessage v) => v.error;
  static const Field<ServerSendsErrorMessage, String> _f$error =
      Field('error', _$error);
  static String _$eventType(ServerSendsErrorMessage v) => v.eventType;
  static const Field<ServerSendsErrorMessage, String> _f$eventType =
      Field('eventType', _$eventType, opt: true, def: "ServerEventWithError");

  @override
  final MappableFields<ServerSendsErrorMessage> fields = const {
    #error: _f$error,
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerSendsErrorMessage';
  @override
  late final ClassMapperBase superMapper =
      ServerEventMapper.ensureInitialized();

  static ServerSendsErrorMessage _instantiate(DecodingData data) {
    return ServerSendsErrorMessage(
        error: data.dec(_f$error), eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerSendsErrorMessage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerSendsErrorMessage>(map);
  }

  static ServerSendsErrorMessage fromJson(String json) {
    return ensureInitialized().decodeJson<ServerSendsErrorMessage>(json);
  }
}

mixin ServerSendsErrorMessageMappable {
  String toJson() {
    return ServerSendsErrorMessageMapper.ensureInitialized()
        .encodeJson<ServerSendsErrorMessage>(this as ServerSendsErrorMessage);
  }

  Map<String, dynamic> toMap() {
    return ServerSendsErrorMessageMapper.ensureInitialized()
        .encodeMap<ServerSendsErrorMessage>(this as ServerSendsErrorMessage);
  }

  ServerSendsErrorMessageCopyWith<ServerSendsErrorMessage,
          ServerSendsErrorMessage, ServerSendsErrorMessage>
      get copyWith => _ServerSendsErrorMessageCopyWithImpl(
          this as ServerSendsErrorMessage, $identity, $identity);
  @override
  String toString() {
    return ServerSendsErrorMessageMapper.ensureInitialized()
        .stringifyValue(this as ServerSendsErrorMessage);
  }

  @override
  bool operator ==(Object other) {
    return ServerSendsErrorMessageMapper.ensureInitialized()
        .equalsValue(this as ServerSendsErrorMessage, other);
  }

  @override
  int get hashCode {
    return ServerSendsErrorMessageMapper.ensureInitialized()
        .hashValue(this as ServerSendsErrorMessage);
  }
}

extension ServerSendsErrorMessageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerSendsErrorMessage, $Out> {
  ServerSendsErrorMessageCopyWith<$R, ServerSendsErrorMessage, $Out>
      get $asServerSendsErrorMessage => $base
          .as((v, t, t2) => _ServerSendsErrorMessageCopyWithImpl(v, t, t2));
}

abstract class ServerSendsErrorMessageCopyWith<
    $R,
    $In extends ServerSendsErrorMessage,
    $Out> implements ServerEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? error, String? eventType});
  ServerSendsErrorMessageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerSendsErrorMessageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerSendsErrorMessage, $Out>
    implements
        ServerSendsErrorMessageCopyWith<$R, ServerSendsErrorMessage, $Out> {
  _ServerSendsErrorMessageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerSendsErrorMessage> $mapper =
      ServerSendsErrorMessageMapper.ensureInitialized();
  @override
  $R call({String? error, String? eventType}) => $apply(FieldCopyWithData({
        if (error != null) #error: error,
        if (eventType != null) #eventType: eventType
      }));
  @override
  ServerSendsErrorMessage $make(CopyWithData data) => ServerSendsErrorMessage(
      error: data.get(#error, or: $value.error),
      eventType: data.get(#eventType, or: $value.eventType));

  @override
  ServerSendsErrorMessageCopyWith<$R2, ServerSendsErrorMessage, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerSendsErrorMessageCopyWithImpl($value, $cast, t);
}

class ServerRejectsWrongCredentialsMapper
    extends SubClassMapperBase<ServerRejectsWrongCredentials> {
  ServerRejectsWrongCredentialsMapper._();

  static ServerRejectsWrongCredentialsMapper? _instance;
  static ServerRejectsWrongCredentialsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerRejectsWrongCredentialsMapper._());
      ServerSendsErrorMessageMapper.ensureInitialized()
          .addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ServerRejectsWrongCredentials';

  static String _$eventType(ServerRejectsWrongCredentials v) => v.eventType;
  static const Field<ServerRejectsWrongCredentials, String> _f$eventType =
      Field('eventType', _$eventType,
          opt: true, def: "ServerRejectsWrongCredentials");
  static String _$error(ServerRejectsWrongCredentials v) => v.error;
  static const Field<ServerRejectsWrongCredentials, String> _f$error =
      Field('error', _$error);

  @override
  final MappableFields<ServerRejectsWrongCredentials> fields = const {
    #eventType: _f$eventType,
    #error: _f$error,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerRejectsWrongCredentials';
  @override
  late final ClassMapperBase superMapper =
      ServerSendsErrorMessageMapper.ensureInitialized();

  static ServerRejectsWrongCredentials _instantiate(DecodingData data) {
    return ServerRejectsWrongCredentials(
        eventType: data.dec(_f$eventType), error: data.dec(_f$error));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerRejectsWrongCredentials fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerRejectsWrongCredentials>(map);
  }

  static ServerRejectsWrongCredentials fromJson(String json) {
    return ensureInitialized().decodeJson<ServerRejectsWrongCredentials>(json);
  }
}

mixin ServerRejectsWrongCredentialsMappable {
  String toJson() {
    return ServerRejectsWrongCredentialsMapper.ensureInitialized()
        .encodeJson<ServerRejectsWrongCredentials>(
            this as ServerRejectsWrongCredentials);
  }

  Map<String, dynamic> toMap() {
    return ServerRejectsWrongCredentialsMapper.ensureInitialized()
        .encodeMap<ServerRejectsWrongCredentials>(
            this as ServerRejectsWrongCredentials);
  }

  ServerRejectsWrongCredentialsCopyWith<ServerRejectsWrongCredentials,
          ServerRejectsWrongCredentials, ServerRejectsWrongCredentials>
      get copyWith => _ServerRejectsWrongCredentialsCopyWithImpl(
          this as ServerRejectsWrongCredentials, $identity, $identity);
  @override
  String toString() {
    return ServerRejectsWrongCredentialsMapper.ensureInitialized()
        .stringifyValue(this as ServerRejectsWrongCredentials);
  }

  @override
  bool operator ==(Object other) {
    return ServerRejectsWrongCredentialsMapper.ensureInitialized()
        .equalsValue(this as ServerRejectsWrongCredentials, other);
  }

  @override
  int get hashCode {
    return ServerRejectsWrongCredentialsMapper.ensureInitialized()
        .hashValue(this as ServerRejectsWrongCredentials);
  }
}

extension ServerRejectsWrongCredentialsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerRejectsWrongCredentials, $Out> {
  ServerRejectsWrongCredentialsCopyWith<$R, ServerRejectsWrongCredentials, $Out>
      get $asServerRejectsWrongCredentials => $base.as(
          (v, t, t2) => _ServerRejectsWrongCredentialsCopyWithImpl(v, t, t2));
}

abstract class ServerRejectsWrongCredentialsCopyWith<
    $R,
    $In extends ServerRejectsWrongCredentials,
    $Out> implements ServerSendsErrorMessageCopyWith<$R, $In, $Out> {
  @override
  $R call({String? eventType, String? error});
  ServerRejectsWrongCredentialsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerRejectsWrongCredentialsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerRejectsWrongCredentials, $Out>
    implements
        ServerRejectsWrongCredentialsCopyWith<$R, ServerRejectsWrongCredentials,
            $Out> {
  _ServerRejectsWrongCredentialsCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerRejectsWrongCredentials> $mapper =
      ServerRejectsWrongCredentialsMapper.ensureInitialized();
  @override
  $R call({String? eventType, String? error}) => $apply(FieldCopyWithData({
        if (eventType != null) #eventType: eventType,
        if (error != null) #error: error
      }));
  @override
  ServerRejectsWrongCredentials $make(CopyWithData data) =>
      ServerRejectsWrongCredentials(
          eventType: data.get(#eventType, or: $value.eventType),
          error: data.get(#error, or: $value.error));

  @override
  ServerRejectsWrongCredentialsCopyWith<$R2, ServerRejectsWrongCredentials,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServerRejectsWrongCredentialsCopyWithImpl($value, $cast, t);
}

class ServerRespondsNotAuthorizedMapper
    extends SubClassMapperBase<ServerRespondsNotAuthorized> {
  ServerRespondsNotAuthorizedMapper._();

  static ServerRespondsNotAuthorizedMapper? _instance;
  static ServerRespondsNotAuthorizedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerRespondsNotAuthorizedMapper._());
      ServerSendsErrorMessageMapper.ensureInitialized()
          .addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ServerRespondsNotAuthorized';

  static String _$eventType(ServerRespondsNotAuthorized v) => v.eventType;
  static const Field<ServerRespondsNotAuthorized, String> _f$eventType = Field(
      'eventType', _$eventType,
      opt: true, def: "ServerRespondsNotAuthorized");
  static String _$error(ServerRespondsNotAuthorized v) => v.error;
  static const Field<ServerRespondsNotAuthorized, String> _f$error =
      Field('error', _$error);

  @override
  final MappableFields<ServerRespondsNotAuthorized> fields = const {
    #eventType: _f$eventType,
    #error: _f$error,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerRespondsNotAuthorized';
  @override
  late final ClassMapperBase superMapper =
      ServerSendsErrorMessageMapper.ensureInitialized();

  static ServerRespondsNotAuthorized _instantiate(DecodingData data) {
    return ServerRespondsNotAuthorized(
        eventType: data.dec(_f$eventType), error: data.dec(_f$error));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerRespondsNotAuthorized fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerRespondsNotAuthorized>(map);
  }

  static ServerRespondsNotAuthorized fromJson(String json) {
    return ensureInitialized().decodeJson<ServerRespondsNotAuthorized>(json);
  }
}

mixin ServerRespondsNotAuthorizedMappable {
  String toJson() {
    return ServerRespondsNotAuthorizedMapper.ensureInitialized()
        .encodeJson<ServerRespondsNotAuthorized>(
            this as ServerRespondsNotAuthorized);
  }

  Map<String, dynamic> toMap() {
    return ServerRespondsNotAuthorizedMapper.ensureInitialized()
        .encodeMap<ServerRespondsNotAuthorized>(
            this as ServerRespondsNotAuthorized);
  }

  ServerRespondsNotAuthorizedCopyWith<ServerRespondsNotAuthorized,
          ServerRespondsNotAuthorized, ServerRespondsNotAuthorized>
      get copyWith => _ServerRespondsNotAuthorizedCopyWithImpl(
          this as ServerRespondsNotAuthorized, $identity, $identity);
  @override
  String toString() {
    return ServerRespondsNotAuthorizedMapper.ensureInitialized()
        .stringifyValue(this as ServerRespondsNotAuthorized);
  }

  @override
  bool operator ==(Object other) {
    return ServerRespondsNotAuthorizedMapper.ensureInitialized()
        .equalsValue(this as ServerRespondsNotAuthorized, other);
  }

  @override
  int get hashCode {
    return ServerRespondsNotAuthorizedMapper.ensureInitialized()
        .hashValue(this as ServerRespondsNotAuthorized);
  }
}

extension ServerRespondsNotAuthorizedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerRespondsNotAuthorized, $Out> {
  ServerRespondsNotAuthorizedCopyWith<$R, ServerRespondsNotAuthorized, $Out>
      get $asServerRespondsNotAuthorized => $base
          .as((v, t, t2) => _ServerRespondsNotAuthorizedCopyWithImpl(v, t, t2));
}

abstract class ServerRespondsNotAuthorizedCopyWith<
    $R,
    $In extends ServerRespondsNotAuthorized,
    $Out> implements ServerSendsErrorMessageCopyWith<$R, $In, $Out> {
  @override
  $R call({String? eventType, String? error});
  ServerRespondsNotAuthorizedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerRespondsNotAuthorizedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerRespondsNotAuthorized, $Out>
    implements
        ServerRespondsNotAuthorizedCopyWith<$R, ServerRespondsNotAuthorized,
            $Out> {
  _ServerRespondsNotAuthorizedCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerRespondsNotAuthorized> $mapper =
      ServerRespondsNotAuthorizedMapper.ensureInitialized();
  @override
  $R call({String? eventType, String? error}) => $apply(FieldCopyWithData({
        if (eventType != null) #eventType: eventType,
        if (error != null) #error: error
      }));
  @override
  ServerRespondsNotAuthorized $make(CopyWithData data) =>
      ServerRespondsNotAuthorized(
          eventType: data.get(#eventType, or: $value.eventType),
          error: data.get(#error, or: $value.error));

  @override
  ServerRespondsNotAuthorizedCopyWith<$R2, ServerRespondsNotAuthorized, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerRespondsNotAuthorizedCopyWithImpl($value, $cast, t);
}

class ServerRespondsNotFoundMapper
    extends SubClassMapperBase<ServerRespondsNotFound> {
  ServerRespondsNotFoundMapper._();

  static ServerRespondsNotFoundMapper? _instance;
  static ServerRespondsNotFoundMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServerRespondsNotFoundMapper._());
      ServerSendsErrorMessageMapper.ensureInitialized()
          .addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ServerRespondsNotFound';

  static String _$eventType(ServerRespondsNotFound v) => v.eventType;
  static const Field<ServerRespondsNotFound, String> _f$eventType =
      Field('eventType', _$eventType, opt: true, def: "ServerRespondsNotFound");
  static String _$error(ServerRespondsNotFound v) => v.error;
  static const Field<ServerRespondsNotFound, String> _f$error =
      Field('error', _$error);

  @override
  final MappableFields<ServerRespondsNotFound> fields = const {
    #eventType: _f$eventType,
    #error: _f$error,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerRespondsNotFound';
  @override
  late final ClassMapperBase superMapper =
      ServerSendsErrorMessageMapper.ensureInitialized();

  static ServerRespondsNotFound _instantiate(DecodingData data) {
    return ServerRespondsNotFound(
        eventType: data.dec(_f$eventType), error: data.dec(_f$error));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerRespondsNotFound fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerRespondsNotFound>(map);
  }

  static ServerRespondsNotFound fromJson(String json) {
    return ensureInitialized().decodeJson<ServerRespondsNotFound>(json);
  }
}

mixin ServerRespondsNotFoundMappable {
  String toJson() {
    return ServerRespondsNotFoundMapper.ensureInitialized()
        .encodeJson<ServerRespondsNotFound>(this as ServerRespondsNotFound);
  }

  Map<String, dynamic> toMap() {
    return ServerRespondsNotFoundMapper.ensureInitialized()
        .encodeMap<ServerRespondsNotFound>(this as ServerRespondsNotFound);
  }

  ServerRespondsNotFoundCopyWith<ServerRespondsNotFound, ServerRespondsNotFound,
          ServerRespondsNotFound>
      get copyWith => _ServerRespondsNotFoundCopyWithImpl(
          this as ServerRespondsNotFound, $identity, $identity);
  @override
  String toString() {
    return ServerRespondsNotFoundMapper.ensureInitialized()
        .stringifyValue(this as ServerRespondsNotFound);
  }

  @override
  bool operator ==(Object other) {
    return ServerRespondsNotFoundMapper.ensureInitialized()
        .equalsValue(this as ServerRespondsNotFound, other);
  }

  @override
  int get hashCode {
    return ServerRespondsNotFoundMapper.ensureInitialized()
        .hashValue(this as ServerRespondsNotFound);
  }
}

extension ServerRespondsNotFoundValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerRespondsNotFound, $Out> {
  ServerRespondsNotFoundCopyWith<$R, ServerRespondsNotFound, $Out>
      get $asServerRespondsNotFound =>
          $base.as((v, t, t2) => _ServerRespondsNotFoundCopyWithImpl(v, t, t2));
}

abstract class ServerRespondsNotFoundCopyWith<
    $R,
    $In extends ServerRespondsNotFound,
    $Out> implements ServerSendsErrorMessageCopyWith<$R, $In, $Out> {
  @override
  $R call({String? eventType, String? error});
  ServerRespondsNotFoundCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerRespondsNotFoundCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerRespondsNotFound, $Out>
    implements
        ServerRespondsNotFoundCopyWith<$R, ServerRespondsNotFound, $Out> {
  _ServerRespondsNotFoundCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerRespondsNotFound> $mapper =
      ServerRespondsNotFoundMapper.ensureInitialized();
  @override
  $R call({String? eventType, String? error}) => $apply(FieldCopyWithData({
        if (eventType != null) #eventType: eventType,
        if (error != null) #error: error
      }));
  @override
  ServerRespondsNotFound $make(CopyWithData data) => ServerRespondsNotFound(
      eventType: data.get(#eventType, or: $value.eventType),
      error: data.get(#error, or: $value.error));

  @override
  ServerRespondsNotFoundCopyWith<$R2, ServerRespondsNotFound, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerRespondsNotFoundCopyWithImpl($value, $cast, t);
}

class ServerRespondsRegisterDeviceMapper
    extends SubClassMapperBase<ServerRespondsRegisterDevice> {
  ServerRespondsRegisterDeviceMapper._();

  static ServerRespondsRegisterDeviceMapper? _instance;
  static ServerRespondsRegisterDeviceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerRespondsRegisterDeviceMapper._());
      ServerSendsErrorMessageMapper.ensureInitialized()
          .addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ServerRespondsRegisterDevice';

  static String _$eventType(ServerRespondsRegisterDevice v) => v.eventType;
  static const Field<ServerRespondsRegisterDevice, String> _f$eventType = Field(
      'eventType', _$eventType,
      opt: true, def: "ServerRespondsRegisterDevice");
  static String _$error(ServerRespondsRegisterDevice v) => v.error;
  static const Field<ServerRespondsRegisterDevice, String> _f$error =
      Field('error', _$error);

  @override
  final MappableFields<ServerRespondsRegisterDevice> fields = const {
    #eventType: _f$eventType,
    #error: _f$error,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerRespondsRegisterDevice';
  @override
  late final ClassMapperBase superMapper =
      ServerSendsErrorMessageMapper.ensureInitialized();

  static ServerRespondsRegisterDevice _instantiate(DecodingData data) {
    return ServerRespondsRegisterDevice(
        eventType: data.dec(_f$eventType), error: data.dec(_f$error));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerRespondsRegisterDevice fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerRespondsRegisterDevice>(map);
  }

  static ServerRespondsRegisterDevice fromJson(String json) {
    return ensureInitialized().decodeJson<ServerRespondsRegisterDevice>(json);
  }
}

mixin ServerRespondsRegisterDeviceMappable {
  String toJson() {
    return ServerRespondsRegisterDeviceMapper.ensureInitialized()
        .encodeJson<ServerRespondsRegisterDevice>(
            this as ServerRespondsRegisterDevice);
  }

  Map<String, dynamic> toMap() {
    return ServerRespondsRegisterDeviceMapper.ensureInitialized()
        .encodeMap<ServerRespondsRegisterDevice>(
            this as ServerRespondsRegisterDevice);
  }

  ServerRespondsRegisterDeviceCopyWith<ServerRespondsRegisterDevice,
          ServerRespondsRegisterDevice, ServerRespondsRegisterDevice>
      get copyWith => _ServerRespondsRegisterDeviceCopyWithImpl(
          this as ServerRespondsRegisterDevice, $identity, $identity);
  @override
  String toString() {
    return ServerRespondsRegisterDeviceMapper.ensureInitialized()
        .stringifyValue(this as ServerRespondsRegisterDevice);
  }

  @override
  bool operator ==(Object other) {
    return ServerRespondsRegisterDeviceMapper.ensureInitialized()
        .equalsValue(this as ServerRespondsRegisterDevice, other);
  }

  @override
  int get hashCode {
    return ServerRespondsRegisterDeviceMapper.ensureInitialized()
        .hashValue(this as ServerRespondsRegisterDevice);
  }
}

extension ServerRespondsRegisterDeviceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerRespondsRegisterDevice, $Out> {
  ServerRespondsRegisterDeviceCopyWith<$R, ServerRespondsRegisterDevice, $Out>
      get $asServerRespondsRegisterDevice => $base.as(
          (v, t, t2) => _ServerRespondsRegisterDeviceCopyWithImpl(v, t, t2));
}

abstract class ServerRespondsRegisterDeviceCopyWith<
    $R,
    $In extends ServerRespondsRegisterDevice,
    $Out> implements ServerSendsErrorMessageCopyWith<$R, $In, $Out> {
  @override
  $R call({String? eventType, String? error});
  ServerRespondsRegisterDeviceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerRespondsRegisterDeviceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerRespondsRegisterDevice, $Out>
    implements
        ServerRespondsRegisterDeviceCopyWith<$R, ServerRespondsRegisterDevice,
            $Out> {
  _ServerRespondsRegisterDeviceCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerRespondsRegisterDevice> $mapper =
      ServerRespondsRegisterDeviceMapper.ensureInitialized();
  @override
  $R call({String? eventType, String? error}) => $apply(FieldCopyWithData({
        if (eventType != null) #eventType: eventType,
        if (error != null) #error: error
      }));
  @override
  ServerRespondsRegisterDevice $make(CopyWithData data) =>
      ServerRespondsRegisterDevice(
          eventType: data.get(#eventType, or: $value.eventType),
          error: data.get(#error, or: $value.error));

  @override
  ServerRespondsRegisterDeviceCopyWith<$R2, ServerRespondsRegisterDevice, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerRespondsRegisterDeviceCopyWithImpl($value, $cast, t);
}

class ServerRespondsValidationErrorMapper
    extends SubClassMapperBase<ServerRespondsValidationError> {
  ServerRespondsValidationErrorMapper._();

  static ServerRespondsValidationErrorMapper? _instance;
  static ServerRespondsValidationErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerRespondsValidationErrorMapper._());
      ServerSendsErrorMessageMapper.ensureInitialized()
          .addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ServerRespondsValidationError';

  static String _$eventType(ServerRespondsValidationError v) => v.eventType;
  static const Field<ServerRespondsValidationError, String> _f$eventType =
      Field('eventType', _$eventType,
          opt: true, def: "ServerRespondsValidationError");
  static String _$error(ServerRespondsValidationError v) => v.error;
  static const Field<ServerRespondsValidationError, String> _f$error =
      Field('error', _$error);

  @override
  final MappableFields<ServerRespondsValidationError> fields = const {
    #eventType: _f$eventType,
    #error: _f$error,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerRespondsValidationError';
  @override
  late final ClassMapperBase superMapper =
      ServerSendsErrorMessageMapper.ensureInitialized();

  static ServerRespondsValidationError _instantiate(DecodingData data) {
    return ServerRespondsValidationError(
        eventType: data.dec(_f$eventType), error: data.dec(_f$error));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerRespondsValidationError fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerRespondsValidationError>(map);
  }

  static ServerRespondsValidationError fromJson(String json) {
    return ensureInitialized().decodeJson<ServerRespondsValidationError>(json);
  }
}

mixin ServerRespondsValidationErrorMappable {
  String toJson() {
    return ServerRespondsValidationErrorMapper.ensureInitialized()
        .encodeJson<ServerRespondsValidationError>(
            this as ServerRespondsValidationError);
  }

  Map<String, dynamic> toMap() {
    return ServerRespondsValidationErrorMapper.ensureInitialized()
        .encodeMap<ServerRespondsValidationError>(
            this as ServerRespondsValidationError);
  }

  ServerRespondsValidationErrorCopyWith<ServerRespondsValidationError,
          ServerRespondsValidationError, ServerRespondsValidationError>
      get copyWith => _ServerRespondsValidationErrorCopyWithImpl(
          this as ServerRespondsValidationError, $identity, $identity);
  @override
  String toString() {
    return ServerRespondsValidationErrorMapper.ensureInitialized()
        .stringifyValue(this as ServerRespondsValidationError);
  }

  @override
  bool operator ==(Object other) {
    return ServerRespondsValidationErrorMapper.ensureInitialized()
        .equalsValue(this as ServerRespondsValidationError, other);
  }

  @override
  int get hashCode {
    return ServerRespondsValidationErrorMapper.ensureInitialized()
        .hashValue(this as ServerRespondsValidationError);
  }
}

extension ServerRespondsValidationErrorValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerRespondsValidationError, $Out> {
  ServerRespondsValidationErrorCopyWith<$R, ServerRespondsValidationError, $Out>
      get $asServerRespondsValidationError => $base.as(
          (v, t, t2) => _ServerRespondsValidationErrorCopyWithImpl(v, t, t2));
}

abstract class ServerRespondsValidationErrorCopyWith<
    $R,
    $In extends ServerRespondsValidationError,
    $Out> implements ServerSendsErrorMessageCopyWith<$R, $In, $Out> {
  @override
  $R call({String? eventType, String? error});
  ServerRespondsValidationErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerRespondsValidationErrorCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerRespondsValidationError, $Out>
    implements
        ServerRespondsValidationErrorCopyWith<$R, ServerRespondsValidationError,
            $Out> {
  _ServerRespondsValidationErrorCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerRespondsValidationError> $mapper =
      ServerRespondsValidationErrorMapper.ensureInitialized();
  @override
  $R call({String? eventType, String? error}) => $apply(FieldCopyWithData({
        if (eventType != null) #eventType: eventType,
        if (error != null) #error: error
      }));
  @override
  ServerRespondsValidationError $make(CopyWithData data) =>
      ServerRespondsValidationError(
          eventType: data.get(#eventType, or: $value.eventType),
          error: data.get(#error, or: $value.error));

  @override
  ServerRespondsValidationErrorCopyWith<$R2, ServerRespondsValidationError,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ServerRespondsValidationErrorCopyWithImpl($value, $cast, t);
}

class ServerRejectsInvalidFileMapper
    extends SubClassMapperBase<ServerRejectsInvalidFile> {
  ServerRejectsInvalidFileMapper._();

  static ServerRejectsInvalidFileMapper? _instance;
  static ServerRejectsInvalidFileMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ServerRejectsInvalidFileMapper._());
      ServerSendsErrorMessageMapper.ensureInitialized()
          .addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ServerRejectsInvalidFile';

  static String _$eventType(ServerRejectsInvalidFile v) => v.eventType;
  static const Field<ServerRejectsInvalidFile, String> _f$eventType = Field(
      'eventType', _$eventType,
      opt: true, def: "ServerRejectsInvalidFile");
  static String _$error(ServerRejectsInvalidFile v) => v.error;
  static const Field<ServerRejectsInvalidFile, String> _f$error =
      Field('error', _$error);

  @override
  final MappableFields<ServerRejectsInvalidFile> fields = const {
    #eventType: _f$eventType,
    #error: _f$error,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerRejectsInvalidFile';
  @override
  late final ClassMapperBase superMapper =
      ServerSendsErrorMessageMapper.ensureInitialized();

  static ServerRejectsInvalidFile _instantiate(DecodingData data) {
    return ServerRejectsInvalidFile(
        eventType: data.dec(_f$eventType), error: data.dec(_f$error));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerRejectsInvalidFile fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerRejectsInvalidFile>(map);
  }

  static ServerRejectsInvalidFile fromJson(String json) {
    return ensureInitialized().decodeJson<ServerRejectsInvalidFile>(json);
  }
}

mixin ServerRejectsInvalidFileMappable {
  String toJson() {
    return ServerRejectsInvalidFileMapper.ensureInitialized()
        .encodeJson<ServerRejectsInvalidFile>(this as ServerRejectsInvalidFile);
  }

  Map<String, dynamic> toMap() {
    return ServerRejectsInvalidFileMapper.ensureInitialized()
        .encodeMap<ServerRejectsInvalidFile>(this as ServerRejectsInvalidFile);
  }

  ServerRejectsInvalidFileCopyWith<ServerRejectsInvalidFile,
          ServerRejectsInvalidFile, ServerRejectsInvalidFile>
      get copyWith => _ServerRejectsInvalidFileCopyWithImpl(
          this as ServerRejectsInvalidFile, $identity, $identity);
  @override
  String toString() {
    return ServerRejectsInvalidFileMapper.ensureInitialized()
        .stringifyValue(this as ServerRejectsInvalidFile);
  }

  @override
  bool operator ==(Object other) {
    return ServerRejectsInvalidFileMapper.ensureInitialized()
        .equalsValue(this as ServerRejectsInvalidFile, other);
  }

  @override
  int get hashCode {
    return ServerRejectsInvalidFileMapper.ensureInitialized()
        .hashValue(this as ServerRejectsInvalidFile);
  }
}

extension ServerRejectsInvalidFileValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerRejectsInvalidFile, $Out> {
  ServerRejectsInvalidFileCopyWith<$R, ServerRejectsInvalidFile, $Out>
      get $asServerRejectsInvalidFile => $base
          .as((v, t, t2) => _ServerRejectsInvalidFileCopyWithImpl(v, t, t2));
}

abstract class ServerRejectsInvalidFileCopyWith<
    $R,
    $In extends ServerRejectsInvalidFile,
    $Out> implements ServerSendsErrorMessageCopyWith<$R, $In, $Out> {
  @override
  $R call({String? eventType, String? error});
  ServerRejectsInvalidFileCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerRejectsInvalidFileCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerRejectsInvalidFile, $Out>
    implements
        ServerRejectsInvalidFileCopyWith<$R, ServerRejectsInvalidFile, $Out> {
  _ServerRejectsInvalidFileCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerRejectsInvalidFile> $mapper =
      ServerRejectsInvalidFileMapper.ensureInitialized();
  @override
  $R call({String? eventType, String? error}) => $apply(FieldCopyWithData({
        if (eventType != null) #eventType: eventType,
        if (error != null) #error: error
      }));
  @override
  ServerRejectsInvalidFile $make(CopyWithData data) => ServerRejectsInvalidFile(
      eventType: data.get(#eventType, or: $value.eventType),
      error: data.get(#error, or: $value.error));

  @override
  ServerRejectsInvalidFileCopyWith<$R2, ServerRejectsInvalidFile, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerRejectsInvalidFileCopyWithImpl($value, $cast, t);
}

class ServerRejectsUpdateMapper
    extends SubClassMapperBase<ServerRejectsUpdate> {
  ServerRejectsUpdateMapper._();

  static ServerRejectsUpdateMapper? _instance;
  static ServerRejectsUpdateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServerRejectsUpdateMapper._());
      ServerSendsErrorMessageMapper.ensureInitialized()
          .addSubMapper(_instance!);
      GetUserDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ServerRejectsUpdate';

  static String _$eventType(ServerRejectsUpdate v) => v.eventType;
  static const Field<ServerRejectsUpdate, String> _f$eventType =
      Field('eventType', _$eventType, opt: true, def: "ServerRejectsUpdate");
  static String _$error(ServerRejectsUpdate v) => v.error;
  static const Field<ServerRejectsUpdate, String> _f$error =
      Field('error', _$error);
  static GetUserDto _$getUserDto(ServerRejectsUpdate v) => v.getUserDto;
  static const Field<ServerRejectsUpdate, GetUserDto> _f$getUserDto =
      Field('getUserDto', _$getUserDto);

  @override
  final MappableFields<ServerRejectsUpdate> fields = const {
    #eventType: _f$eventType,
    #error: _f$error,
    #getUserDto: _f$getUserDto,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ServerRejectsUpdate';
  @override
  late final ClassMapperBase superMapper =
      ServerSendsErrorMessageMapper.ensureInitialized();

  static ServerRejectsUpdate _instantiate(DecodingData data) {
    return ServerRejectsUpdate(
        eventType: data.dec(_f$eventType),
        error: data.dec(_f$error),
        getUserDto: data.dec(_f$getUserDto));
  }

  @override
  final Function instantiate = _instantiate;

  static ServerRejectsUpdate fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ServerRejectsUpdate>(map);
  }

  static ServerRejectsUpdate fromJson(String json) {
    return ensureInitialized().decodeJson<ServerRejectsUpdate>(json);
  }
}

mixin ServerRejectsUpdateMappable {
  String toJson() {
    return ServerRejectsUpdateMapper.ensureInitialized()
        .encodeJson<ServerRejectsUpdate>(this as ServerRejectsUpdate);
  }

  Map<String, dynamic> toMap() {
    return ServerRejectsUpdateMapper.ensureInitialized()
        .encodeMap<ServerRejectsUpdate>(this as ServerRejectsUpdate);
  }

  ServerRejectsUpdateCopyWith<ServerRejectsUpdate, ServerRejectsUpdate,
          ServerRejectsUpdate>
      get copyWith => _ServerRejectsUpdateCopyWithImpl(
          this as ServerRejectsUpdate, $identity, $identity);
  @override
  String toString() {
    return ServerRejectsUpdateMapper.ensureInitialized()
        .stringifyValue(this as ServerRejectsUpdate);
  }

  @override
  bool operator ==(Object other) {
    return ServerRejectsUpdateMapper.ensureInitialized()
        .equalsValue(this as ServerRejectsUpdate, other);
  }

  @override
  int get hashCode {
    return ServerRejectsUpdateMapper.ensureInitialized()
        .hashValue(this as ServerRejectsUpdate);
  }
}

extension ServerRejectsUpdateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ServerRejectsUpdate, $Out> {
  ServerRejectsUpdateCopyWith<$R, ServerRejectsUpdate, $Out>
      get $asServerRejectsUpdate =>
          $base.as((v, t, t2) => _ServerRejectsUpdateCopyWithImpl(v, t, t2));
}

abstract class ServerRejectsUpdateCopyWith<$R, $In extends ServerRejectsUpdate,
    $Out> implements ServerSendsErrorMessageCopyWith<$R, $In, $Out> {
  GetUserDtoCopyWith<$R, GetUserDto, GetUserDto> get getUserDto;
  @override
  $R call({String? eventType, String? error, GetUserDto? getUserDto});
  ServerRejectsUpdateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ServerRejectsUpdateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ServerRejectsUpdate, $Out>
    implements ServerRejectsUpdateCopyWith<$R, ServerRejectsUpdate, $Out> {
  _ServerRejectsUpdateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ServerRejectsUpdate> $mapper =
      ServerRejectsUpdateMapper.ensureInitialized();
  @override
  GetUserDtoCopyWith<$R, GetUserDto, GetUserDto> get getUserDto =>
      $value.getUserDto.copyWith.$chain((v) => call(getUserDto: v));
  @override
  $R call({String? eventType, String? error, GetUserDto? getUserDto}) =>
      $apply(FieldCopyWithData({
        if (eventType != null) #eventType: eventType,
        if (error != null) #error: error,
        if (getUserDto != null) #getUserDto: getUserDto
      }));
  @override
  ServerRejectsUpdate $make(CopyWithData data) => ServerRejectsUpdate(
      eventType: data.get(#eventType, or: $value.eventType),
      error: data.get(#error, or: $value.error),
      getUserDto: data.get(#getUserDto, or: $value.getUserDto));

  @override
  ServerRejectsUpdateCopyWith<$R2, ServerRejectsUpdate, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ServerRejectsUpdateCopyWithImpl($value, $cast, t);
}
