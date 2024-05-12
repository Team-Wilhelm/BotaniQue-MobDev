// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'client_events.dart';

class BaseEventMapper extends ClassMapperBase<BaseEvent> {
  BaseEventMapper._();

  static BaseEventMapper? _instance;
  static BaseEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BaseEventMapper._());
      ClientEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BaseEvent';

  static String _$eventType(BaseEvent v) => v.eventType;
  static const Field<BaseEvent, String> _f$eventType =
      Field('eventType', _$eventType);

  @override
  final MappableFields<BaseEvent> fields = const {
    #eventType: _f$eventType,
  };

  static BaseEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'BaseEvent', 'eventType', '${data.value['eventType']}');
  }

  @override
  final Function instantiate = _instantiate;

  static BaseEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BaseEvent>(map);
  }

  static BaseEvent fromJson(String json) {
    return ensureInitialized().decodeJson<BaseEvent>(json);
  }
}

mixin BaseEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  BaseEventCopyWith<BaseEvent, BaseEvent, BaseEvent> get copyWith;
}

abstract class BaseEventCopyWith<$R, $In extends BaseEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? eventType});
  BaseEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class ClientEventMapper extends SubClassMapperBase<ClientEvent> {
  ClientEventMapper._();

  static ClientEventMapper? _instance;
  static ClientEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClientEventMapper._());
      BaseEventMapper.ensureInitialized().addSubMapper(_instance!);
      ClientWantsToLogInMapper.ensureInitialized();
      ClientWantsToLogOutMapper.ensureInitialized();
      ClientEventWithJwtMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ClientEvent';

  static String _$eventType(ClientEvent v) => v.eventType;
  static const Field<ClientEvent, String> _f$eventType =
      Field('eventType', _$eventType);

  @override
  final MappableFields<ClientEvent> fields = const {
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'baseDto';
  @override
  late final ClassMapperBase superMapper = BaseEventMapper.ensureInitialized();

  static ClientEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'ClientEvent', 'eventType', '${data.value['eventType']}');
  }

  @override
  final Function instantiate = _instantiate;

  static ClientEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientEvent>(map);
  }

  static ClientEvent fromJson(String json) {
    return ensureInitialized().decodeJson<ClientEvent>(json);
  }
}

mixin ClientEventMappable {
  String toJson();
  Map<String, dynamic> toMap();
  ClientEventCopyWith<ClientEvent, ClientEvent, ClientEvent> get copyWith;
}

abstract class ClientEventCopyWith<$R, $In extends ClientEvent, $Out>
    implements BaseEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? eventType});
  ClientEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class ClientWantsToLogInMapper extends SubClassMapperBase<ClientWantsToLogIn> {
  ClientWantsToLogInMapper._();

  static ClientWantsToLogInMapper? _instance;
  static ClientWantsToLogInMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClientWantsToLogInMapper._());
      ClientEventMapper.ensureInitialized().addSubMapper(_instance!);
      LoginDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ClientWantsToLogIn';

  static LoginDto _$loginDto(ClientWantsToLogIn v) => v.loginDto;
  static const Field<ClientWantsToLogIn, LoginDto> _f$loginDto =
      Field('loginDto', _$loginDto);
  static String _$eventType(ClientWantsToLogIn v) => v.eventType;
  static const Field<ClientWantsToLogIn, String> _f$eventType =
      Field('eventType', _$eventType);

  @override
  final MappableFields<ClientWantsToLogIn> fields = const {
    #loginDto: _f$loginDto,
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ClientWantsToLogIn';
  @override
  late final ClassMapperBase superMapper =
      ClientEventMapper.ensureInitialized();

  static ClientWantsToLogIn _instantiate(DecodingData data) {
    return ClientWantsToLogIn(
        loginDto: data.dec(_f$loginDto), eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientWantsToLogIn fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientWantsToLogIn>(map);
  }

  static ClientWantsToLogIn fromJson(String json) {
    return ensureInitialized().decodeJson<ClientWantsToLogIn>(json);
  }
}

mixin ClientWantsToLogInMappable {
  String toJson() {
    return ClientWantsToLogInMapper.ensureInitialized()
        .encodeJson<ClientWantsToLogIn>(this as ClientWantsToLogIn);
  }

  Map<String, dynamic> toMap() {
    return ClientWantsToLogInMapper.ensureInitialized()
        .encodeMap<ClientWantsToLogIn>(this as ClientWantsToLogIn);
  }

  ClientWantsToLogInCopyWith<ClientWantsToLogIn, ClientWantsToLogIn,
          ClientWantsToLogIn>
      get copyWith => _ClientWantsToLogInCopyWithImpl(
          this as ClientWantsToLogIn, $identity, $identity);
  @override
  String toString() {
    return ClientWantsToLogInMapper.ensureInitialized()
        .stringifyValue(this as ClientWantsToLogIn);
  }

  @override
  bool operator ==(Object other) {
    return ClientWantsToLogInMapper.ensureInitialized()
        .equalsValue(this as ClientWantsToLogIn, other);
  }

  @override
  int get hashCode {
    return ClientWantsToLogInMapper.ensureInitialized()
        .hashValue(this as ClientWantsToLogIn);
  }
}

extension ClientWantsToLogInValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientWantsToLogIn, $Out> {
  ClientWantsToLogInCopyWith<$R, ClientWantsToLogIn, $Out>
      get $asClientWantsToLogIn =>
          $base.as((v, t, t2) => _ClientWantsToLogInCopyWithImpl(v, t, t2));
}

abstract class ClientWantsToLogInCopyWith<$R, $In extends ClientWantsToLogIn,
    $Out> implements ClientEventCopyWith<$R, $In, $Out> {
  LoginDtoCopyWith<$R, LoginDto, LoginDto> get loginDto;
  @override
  $R call({LoginDto? loginDto, String? eventType});
  ClientWantsToLogInCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientWantsToLogInCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientWantsToLogIn, $Out>
    implements ClientWantsToLogInCopyWith<$R, ClientWantsToLogIn, $Out> {
  _ClientWantsToLogInCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientWantsToLogIn> $mapper =
      ClientWantsToLogInMapper.ensureInitialized();
  @override
  LoginDtoCopyWith<$R, LoginDto, LoginDto> get loginDto =>
      $value.loginDto.copyWith.$chain((v) => call(loginDto: v));
  @override
  $R call({LoginDto? loginDto, String? eventType}) => $apply(FieldCopyWithData({
        if (loginDto != null) #loginDto: loginDto,
        if (eventType != null) #eventType: eventType
      }));
  @override
  ClientWantsToLogIn $make(CopyWithData data) => ClientWantsToLogIn(
      loginDto: data.get(#loginDto, or: $value.loginDto),
      eventType: data.get(#eventType, or: $value.eventType));

  @override
  ClientWantsToLogInCopyWith<$R2, ClientWantsToLogIn, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ClientWantsToLogInCopyWithImpl($value, $cast, t);
}

class ClientWantsToLogOutMapper
    extends SubClassMapperBase<ClientWantsToLogOut> {
  ClientWantsToLogOutMapper._();

  static ClientWantsToLogOutMapper? _instance;
  static ClientWantsToLogOutMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClientWantsToLogOutMapper._());
      ClientEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientWantsToLogOut';

  static String _$email(ClientWantsToLogOut v) => v.email;
  static const Field<ClientWantsToLogOut, String> _f$email =
      Field('email', _$email);
  static String _$eventType(ClientWantsToLogOut v) => v.eventType;
  static const Field<ClientWantsToLogOut, String> _f$eventType =
      Field('eventType', _$eventType);

  @override
  final MappableFields<ClientWantsToLogOut> fields = const {
    #email: _f$email,
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = 'ClientWantsToLogOut';
  @override
  late final ClassMapperBase superMapper =
      ClientEventMapper.ensureInitialized();

  static ClientWantsToLogOut _instantiate(DecodingData data) {
    return ClientWantsToLogOut(
        email: data.dec(_f$email), eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientWantsToLogOut fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientWantsToLogOut>(map);
  }

  static ClientWantsToLogOut fromJson(String json) {
    return ensureInitialized().decodeJson<ClientWantsToLogOut>(json);
  }
}

mixin ClientWantsToLogOutMappable {
  String toJson() {
    return ClientWantsToLogOutMapper.ensureInitialized()
        .encodeJson<ClientWantsToLogOut>(this as ClientWantsToLogOut);
  }

  Map<String, dynamic> toMap() {
    return ClientWantsToLogOutMapper.ensureInitialized()
        .encodeMap<ClientWantsToLogOut>(this as ClientWantsToLogOut);
  }

  ClientWantsToLogOutCopyWith<ClientWantsToLogOut, ClientWantsToLogOut,
          ClientWantsToLogOut>
      get copyWith => _ClientWantsToLogOutCopyWithImpl(
          this as ClientWantsToLogOut, $identity, $identity);
  @override
  String toString() {
    return ClientWantsToLogOutMapper.ensureInitialized()
        .stringifyValue(this as ClientWantsToLogOut);
  }

  @override
  bool operator ==(Object other) {
    return ClientWantsToLogOutMapper.ensureInitialized()
        .equalsValue(this as ClientWantsToLogOut, other);
  }

  @override
  int get hashCode {
    return ClientWantsToLogOutMapper.ensureInitialized()
        .hashValue(this as ClientWantsToLogOut);
  }
}

extension ClientWantsToLogOutValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientWantsToLogOut, $Out> {
  ClientWantsToLogOutCopyWith<$R, ClientWantsToLogOut, $Out>
      get $asClientWantsToLogOut =>
          $base.as((v, t, t2) => _ClientWantsToLogOutCopyWithImpl(v, t, t2));
}

abstract class ClientWantsToLogOutCopyWith<$R, $In extends ClientWantsToLogOut,
    $Out> implements ClientEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? email, String? eventType});
  ClientWantsToLogOutCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientWantsToLogOutCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientWantsToLogOut, $Out>
    implements ClientWantsToLogOutCopyWith<$R, ClientWantsToLogOut, $Out> {
  _ClientWantsToLogOutCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientWantsToLogOut> $mapper =
      ClientWantsToLogOutMapper.ensureInitialized();
  @override
  $R call({String? email, String? eventType}) => $apply(FieldCopyWithData({
        if (email != null) #email: email,
        if (eventType != null) #eventType: eventType
      }));
  @override
  ClientWantsToLogOut $make(CopyWithData data) => ClientWantsToLogOut(
      email: data.get(#email, or: $value.email),
      eventType: data.get(#eventType, or: $value.eventType));

  @override
  ClientWantsToLogOutCopyWith<$R2, ClientWantsToLogOut, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ClientWantsToLogOutCopyWithImpl($value, $cast, t);
}

class ClientEventWithJwtMapper extends SubClassMapperBase<ClientEventWithJwt> {
  ClientEventWithJwtMapper._();

  static ClientEventWithJwtMapper? _instance;
  static ClientEventWithJwtMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClientEventWithJwtMapper._());
      ClientEventMapper.ensureInitialized().addSubMapper(_instance!);
      ClientWantsToCheckJwtValidityMapper.ensureInitialized();
      ClientWantsAllPlantsMapper.ensureInitialized();
      ClientWantsToDeletePlantMapper.ensureInitialized();
      ClientWantsToUpdatePlantMapper.ensureInitialized();
      ClientWantsPlantByIdMapper.ensureInitialized();
      ClientWantsToRemoveBackgroundFromImageMapper.ensureInitialized();
      ClientWantsToCreatePlantMapper.ensureInitialized();
      ClientWantsLatestConditionsForPlantMapper.ensureInitialized();
      ClientWantsAllCollectionsMapper.ensureInitialized();
      ClientWantsPlantsForCollectionMapper.ensureInitialized();
      ClientWantsToCreateCollectionMapper.ensureInitialized();
      ClientWantsToUpdateCollectionMapper.ensureInitialized();
      ClientWantsToDeleteCollectionMapper.ensureInitialized();
      ClientWantsToUpdateProfileMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ClientEventWithJwt';

  static String _$jwt(ClientEventWithJwt v) => v.jwt;
  static const Field<ClientEventWithJwt, String> _f$jwt = Field('jwt', _$jwt);
  static String _$eventType(ClientEventWithJwt v) => v.eventType;
  static const Field<ClientEventWithJwt, String> _f$eventType =
      Field('eventType', _$eventType);

  @override
  final MappableFields<ClientEventWithJwt> fields = const {
    #jwt: _f$jwt,
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = "ClientEventWithJwt";
  @override
  late final ClassMapperBase superMapper =
      ClientEventMapper.ensureInitialized();

  static ClientEventWithJwt _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'ClientEventWithJwt', 'eventType', '${data.value['eventType']}');
  }

  @override
  final Function instantiate = _instantiate;

  static ClientEventWithJwt fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientEventWithJwt>(map);
  }

  static ClientEventWithJwt fromJson(String json) {
    return ensureInitialized().decodeJson<ClientEventWithJwt>(json);
  }
}

mixin ClientEventWithJwtMappable {
  String toJson();
  Map<String, dynamic> toMap();
  ClientEventWithJwtCopyWith<ClientEventWithJwt, ClientEventWithJwt,
      ClientEventWithJwt> get copyWith;
}

abstract class ClientEventWithJwtCopyWith<$R, $In extends ClientEventWithJwt,
    $Out> implements ClientEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? jwt, String? eventType});
  ClientEventWithJwtCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class ClientWantsToCheckJwtValidityMapper
    extends SubClassMapperBase<ClientWantsToCheckJwtValidity> {
  ClientWantsToCheckJwtValidityMapper._();

  static ClientWantsToCheckJwtValidityMapper? _instance;
  static ClientWantsToCheckJwtValidityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientWantsToCheckJwtValidityMapper._());
      ClientEventWithJwtMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientWantsToCheckJwtValidity';

  static String _$jwt(ClientWantsToCheckJwtValidity v) => v.jwt;
  static const Field<ClientWantsToCheckJwtValidity, String> _f$jwt =
      Field('jwt', _$jwt);
  static String _$eventType(ClientWantsToCheckJwtValidity v) => v.eventType;
  static const Field<ClientWantsToCheckJwtValidity, String> _f$eventType =
      Field('eventType', _$eventType,
          opt: true, def: "ClientWantsToCheckJwtValidity");

  @override
  final MappableFields<ClientWantsToCheckJwtValidity> fields = const {
    #jwt: _f$jwt,
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = "ClientWantsToCheckJwtValidity";
  @override
  late final ClassMapperBase superMapper =
      ClientEventWithJwtMapper.ensureInitialized();

  static ClientWantsToCheckJwtValidity _instantiate(DecodingData data) {
    return ClientWantsToCheckJwtValidity(
        jwt: data.dec(_f$jwt), eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientWantsToCheckJwtValidity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientWantsToCheckJwtValidity>(map);
  }

  static ClientWantsToCheckJwtValidity fromJson(String json) {
    return ensureInitialized().decodeJson<ClientWantsToCheckJwtValidity>(json);
  }
}

mixin ClientWantsToCheckJwtValidityMappable {
  String toJson() {
    return ClientWantsToCheckJwtValidityMapper.ensureInitialized()
        .encodeJson<ClientWantsToCheckJwtValidity>(
            this as ClientWantsToCheckJwtValidity);
  }

  Map<String, dynamic> toMap() {
    return ClientWantsToCheckJwtValidityMapper.ensureInitialized()
        .encodeMap<ClientWantsToCheckJwtValidity>(
            this as ClientWantsToCheckJwtValidity);
  }

  ClientWantsToCheckJwtValidityCopyWith<ClientWantsToCheckJwtValidity,
          ClientWantsToCheckJwtValidity, ClientWantsToCheckJwtValidity>
      get copyWith => _ClientWantsToCheckJwtValidityCopyWithImpl(
          this as ClientWantsToCheckJwtValidity, $identity, $identity);
  @override
  String toString() {
    return ClientWantsToCheckJwtValidityMapper.ensureInitialized()
        .stringifyValue(this as ClientWantsToCheckJwtValidity);
  }

  @override
  bool operator ==(Object other) {
    return ClientWantsToCheckJwtValidityMapper.ensureInitialized()
        .equalsValue(this as ClientWantsToCheckJwtValidity, other);
  }

  @override
  int get hashCode {
    return ClientWantsToCheckJwtValidityMapper.ensureInitialized()
        .hashValue(this as ClientWantsToCheckJwtValidity);
  }
}

extension ClientWantsToCheckJwtValidityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientWantsToCheckJwtValidity, $Out> {
  ClientWantsToCheckJwtValidityCopyWith<$R, ClientWantsToCheckJwtValidity, $Out>
      get $asClientWantsToCheckJwtValidity => $base.as(
          (v, t, t2) => _ClientWantsToCheckJwtValidityCopyWithImpl(v, t, t2));
}

abstract class ClientWantsToCheckJwtValidityCopyWith<
    $R,
    $In extends ClientWantsToCheckJwtValidity,
    $Out> implements ClientEventWithJwtCopyWith<$R, $In, $Out> {
  @override
  $R call({String? jwt, String? eventType});
  ClientWantsToCheckJwtValidityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientWantsToCheckJwtValidityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientWantsToCheckJwtValidity, $Out>
    implements
        ClientWantsToCheckJwtValidityCopyWith<$R, ClientWantsToCheckJwtValidity,
            $Out> {
  _ClientWantsToCheckJwtValidityCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientWantsToCheckJwtValidity> $mapper =
      ClientWantsToCheckJwtValidityMapper.ensureInitialized();
  @override
  $R call({String? jwt, String? eventType}) => $apply(FieldCopyWithData({
        if (jwt != null) #jwt: jwt,
        if (eventType != null) #eventType: eventType
      }));
  @override
  ClientWantsToCheckJwtValidity $make(CopyWithData data) =>
      ClientWantsToCheckJwtValidity(
          jwt: data.get(#jwt, or: $value.jwt),
          eventType: data.get(#eventType, or: $value.eventType));

  @override
  ClientWantsToCheckJwtValidityCopyWith<$R2, ClientWantsToCheckJwtValidity,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ClientWantsToCheckJwtValidityCopyWithImpl($value, $cast, t);
}

class ClientWantsAllPlantsMapper
    extends SubClassMapperBase<ClientWantsAllPlants> {
  ClientWantsAllPlantsMapper._();

  static ClientWantsAllPlantsMapper? _instance;
  static ClientWantsAllPlantsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClientWantsAllPlantsMapper._());
      ClientEventWithJwtMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientWantsAllPlants';

  static String _$jwt(ClientWantsAllPlants v) => v.jwt;
  static const Field<ClientWantsAllPlants, String> _f$jwt = Field('jwt', _$jwt);
  static int _$pageNumber(ClientWantsAllPlants v) => v.pageNumber;
  static const Field<ClientWantsAllPlants, int> _f$pageNumber =
      Field('pageNumber', _$pageNumber);
  static int _$pageSize(ClientWantsAllPlants v) => v.pageSize;
  static const Field<ClientWantsAllPlants, int> _f$pageSize =
      Field('pageSize', _$pageSize);
  static String _$eventType(ClientWantsAllPlants v) => v.eventType;
  static const Field<ClientWantsAllPlants, String> _f$eventType = Field(
      'eventType', _$eventType,
      opt: true, def: "ClientWantsAllPlantsMappable");

  @override
  final MappableFields<ClientWantsAllPlants> fields = const {
    #jwt: _f$jwt,
    #pageNumber: _f$pageNumber,
    #pageSize: _f$pageSize,
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = "ClientWantsAllPlants";
  @override
  late final ClassMapperBase superMapper =
      ClientEventWithJwtMapper.ensureInitialized();

  static ClientWantsAllPlants _instantiate(DecodingData data) {
    return ClientWantsAllPlants(
        jwt: data.dec(_f$jwt),
        pageNumber: data.dec(_f$pageNumber),
        pageSize: data.dec(_f$pageSize),
        eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientWantsAllPlants fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientWantsAllPlants>(map);
  }

  static ClientWantsAllPlants fromJson(String json) {
    return ensureInitialized().decodeJson<ClientWantsAllPlants>(json);
  }
}

mixin ClientWantsAllPlantsMappable {
  String toJson() {
    return ClientWantsAllPlantsMapper.ensureInitialized()
        .encodeJson<ClientWantsAllPlants>(this as ClientWantsAllPlants);
  }

  Map<String, dynamic> toMap() {
    return ClientWantsAllPlantsMapper.ensureInitialized()
        .encodeMap<ClientWantsAllPlants>(this as ClientWantsAllPlants);
  }

  ClientWantsAllPlantsCopyWith<ClientWantsAllPlants, ClientWantsAllPlants,
          ClientWantsAllPlants>
      get copyWith => _ClientWantsAllPlantsCopyWithImpl(
          this as ClientWantsAllPlants, $identity, $identity);
  @override
  String toString() {
    return ClientWantsAllPlantsMapper.ensureInitialized()
        .stringifyValue(this as ClientWantsAllPlants);
  }

  @override
  bool operator ==(Object other) {
    return ClientWantsAllPlantsMapper.ensureInitialized()
        .equalsValue(this as ClientWantsAllPlants, other);
  }

  @override
  int get hashCode {
    return ClientWantsAllPlantsMapper.ensureInitialized()
        .hashValue(this as ClientWantsAllPlants);
  }
}

extension ClientWantsAllPlantsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientWantsAllPlants, $Out> {
  ClientWantsAllPlantsCopyWith<$R, ClientWantsAllPlants, $Out>
      get $asClientWantsAllPlants =>
          $base.as((v, t, t2) => _ClientWantsAllPlantsCopyWithImpl(v, t, t2));
}

abstract class ClientWantsAllPlantsCopyWith<
    $R,
    $In extends ClientWantsAllPlants,
    $Out> implements ClientEventWithJwtCopyWith<$R, $In, $Out> {
  @override
  $R call({String? jwt, int? pageNumber, int? pageSize, String? eventType});
  ClientWantsAllPlantsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientWantsAllPlantsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientWantsAllPlants, $Out>
    implements ClientWantsAllPlantsCopyWith<$R, ClientWantsAllPlants, $Out> {
  _ClientWantsAllPlantsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientWantsAllPlants> $mapper =
      ClientWantsAllPlantsMapper.ensureInitialized();
  @override
  $R call({String? jwt, int? pageNumber, int? pageSize, String? eventType}) =>
      $apply(FieldCopyWithData({
        if (jwt != null) #jwt: jwt,
        if (pageNumber != null) #pageNumber: pageNumber,
        if (pageSize != null) #pageSize: pageSize,
        if (eventType != null) #eventType: eventType
      }));
  @override
  ClientWantsAllPlants $make(CopyWithData data) => ClientWantsAllPlants(
      jwt: data.get(#jwt, or: $value.jwt),
      pageNumber: data.get(#pageNumber, or: $value.pageNumber),
      pageSize: data.get(#pageSize, or: $value.pageSize),
      eventType: data.get(#eventType, or: $value.eventType));

  @override
  ClientWantsAllPlantsCopyWith<$R2, ClientWantsAllPlants, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ClientWantsAllPlantsCopyWithImpl($value, $cast, t);
}

class ClientWantsToDeletePlantMapper
    extends SubClassMapperBase<ClientWantsToDeletePlant> {
  ClientWantsToDeletePlantMapper._();

  static ClientWantsToDeletePlantMapper? _instance;
  static ClientWantsToDeletePlantMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientWantsToDeletePlantMapper._());
      ClientEventWithJwtMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientWantsToDeletePlant';

  static String _$jwt(ClientWantsToDeletePlant v) => v.jwt;
  static const Field<ClientWantsToDeletePlant, String> _f$jwt =
      Field('jwt', _$jwt);
  static String _$eventType(ClientWantsToDeletePlant v) => v.eventType;
  static const Field<ClientWantsToDeletePlant, String> _f$eventType = Field(
      'eventType', _$eventType,
      opt: true, def: "ClientWantsToDeletePlant");
  static String _$plantId(ClientWantsToDeletePlant v) => v.plantId;
  static const Field<ClientWantsToDeletePlant, String> _f$plantId =
      Field('plantId', _$plantId);

  @override
  final MappableFields<ClientWantsToDeletePlant> fields = const {
    #jwt: _f$jwt,
    #eventType: _f$eventType,
    #plantId: _f$plantId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = "ClientWantsToDeletePlant";
  @override
  late final ClassMapperBase superMapper =
      ClientEventWithJwtMapper.ensureInitialized();

  static ClientWantsToDeletePlant _instantiate(DecodingData data) {
    return ClientWantsToDeletePlant(
        jwt: data.dec(_f$jwt),
        eventType: data.dec(_f$eventType),
        plantId: data.dec(_f$plantId));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientWantsToDeletePlant fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientWantsToDeletePlant>(map);
  }

  static ClientWantsToDeletePlant fromJson(String json) {
    return ensureInitialized().decodeJson<ClientWantsToDeletePlant>(json);
  }
}

mixin ClientWantsToDeletePlantMappable {
  String toJson() {
    return ClientWantsToDeletePlantMapper.ensureInitialized()
        .encodeJson<ClientWantsToDeletePlant>(this as ClientWantsToDeletePlant);
  }

  Map<String, dynamic> toMap() {
    return ClientWantsToDeletePlantMapper.ensureInitialized()
        .encodeMap<ClientWantsToDeletePlant>(this as ClientWantsToDeletePlant);
  }

  ClientWantsToDeletePlantCopyWith<ClientWantsToDeletePlant,
          ClientWantsToDeletePlant, ClientWantsToDeletePlant>
      get copyWith => _ClientWantsToDeletePlantCopyWithImpl(
          this as ClientWantsToDeletePlant, $identity, $identity);
  @override
  String toString() {
    return ClientWantsToDeletePlantMapper.ensureInitialized()
        .stringifyValue(this as ClientWantsToDeletePlant);
  }

  @override
  bool operator ==(Object other) {
    return ClientWantsToDeletePlantMapper.ensureInitialized()
        .equalsValue(this as ClientWantsToDeletePlant, other);
  }

  @override
  int get hashCode {
    return ClientWantsToDeletePlantMapper.ensureInitialized()
        .hashValue(this as ClientWantsToDeletePlant);
  }
}

extension ClientWantsToDeletePlantValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientWantsToDeletePlant, $Out> {
  ClientWantsToDeletePlantCopyWith<$R, ClientWantsToDeletePlant, $Out>
      get $asClientWantsToDeletePlant => $base
          .as((v, t, t2) => _ClientWantsToDeletePlantCopyWithImpl(v, t, t2));
}

abstract class ClientWantsToDeletePlantCopyWith<
    $R,
    $In extends ClientWantsToDeletePlant,
    $Out> implements ClientEventWithJwtCopyWith<$R, $In, $Out> {
  @override
  $R call({String? jwt, String? eventType, String? plantId});
  ClientWantsToDeletePlantCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientWantsToDeletePlantCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientWantsToDeletePlant, $Out>
    implements
        ClientWantsToDeletePlantCopyWith<$R, ClientWantsToDeletePlant, $Out> {
  _ClientWantsToDeletePlantCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientWantsToDeletePlant> $mapper =
      ClientWantsToDeletePlantMapper.ensureInitialized();
  @override
  $R call({String? jwt, String? eventType, String? plantId}) =>
      $apply(FieldCopyWithData({
        if (jwt != null) #jwt: jwt,
        if (eventType != null) #eventType: eventType,
        if (plantId != null) #plantId: plantId
      }));
  @override
  ClientWantsToDeletePlant $make(CopyWithData data) => ClientWantsToDeletePlant(
      jwt: data.get(#jwt, or: $value.jwt),
      eventType: data.get(#eventType, or: $value.eventType),
      plantId: data.get(#plantId, or: $value.plantId));

  @override
  ClientWantsToDeletePlantCopyWith<$R2, ClientWantsToDeletePlant, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ClientWantsToDeletePlantCopyWithImpl($value, $cast, t);
}

class ClientWantsToUpdatePlantMapper
    extends SubClassMapperBase<ClientWantsToUpdatePlant> {
  ClientWantsToUpdatePlantMapper._();

  static ClientWantsToUpdatePlantMapper? _instance;
  static ClientWantsToUpdatePlantMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientWantsToUpdatePlantMapper._());
      ClientEventWithJwtMapper.ensureInitialized().addSubMapper(_instance!);
      UpdatePlantDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ClientWantsToUpdatePlant';

  static String _$jwt(ClientWantsToUpdatePlant v) => v.jwt;
  static const Field<ClientWantsToUpdatePlant, String> _f$jwt =
      Field('jwt', _$jwt);
  static String _$eventType(ClientWantsToUpdatePlant v) => v.eventType;
  static const Field<ClientWantsToUpdatePlant, String> _f$eventType = Field(
      'eventType', _$eventType,
      opt: true, def: "ClientWantsToUpdatePlant");
  static UpdatePlantDto _$updatePlantDto(ClientWantsToUpdatePlant v) =>
      v.updatePlantDto;
  static const Field<ClientWantsToUpdatePlant, UpdatePlantDto>
      _f$updatePlantDto = Field('updatePlantDto', _$updatePlantDto);

  @override
  final MappableFields<ClientWantsToUpdatePlant> fields = const {
    #jwt: _f$jwt,
    #eventType: _f$eventType,
    #updatePlantDto: _f$updatePlantDto,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = "ClientWantsToUpdatePlant";
  @override
  late final ClassMapperBase superMapper =
      ClientEventWithJwtMapper.ensureInitialized();

  static ClientWantsToUpdatePlant _instantiate(DecodingData data) {
    return ClientWantsToUpdatePlant(
        jwt: data.dec(_f$jwt),
        eventType: data.dec(_f$eventType),
        updatePlantDto: data.dec(_f$updatePlantDto));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientWantsToUpdatePlant fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientWantsToUpdatePlant>(map);
  }

  static ClientWantsToUpdatePlant fromJson(String json) {
    return ensureInitialized().decodeJson<ClientWantsToUpdatePlant>(json);
  }
}

mixin ClientWantsToUpdatePlantMappable {
  String toJson() {
    return ClientWantsToUpdatePlantMapper.ensureInitialized()
        .encodeJson<ClientWantsToUpdatePlant>(this as ClientWantsToUpdatePlant);
  }

  Map<String, dynamic> toMap() {
    return ClientWantsToUpdatePlantMapper.ensureInitialized()
        .encodeMap<ClientWantsToUpdatePlant>(this as ClientWantsToUpdatePlant);
  }

  ClientWantsToUpdatePlantCopyWith<ClientWantsToUpdatePlant,
          ClientWantsToUpdatePlant, ClientWantsToUpdatePlant>
      get copyWith => _ClientWantsToUpdatePlantCopyWithImpl(
          this as ClientWantsToUpdatePlant, $identity, $identity);
  @override
  String toString() {
    return ClientWantsToUpdatePlantMapper.ensureInitialized()
        .stringifyValue(this as ClientWantsToUpdatePlant);
  }

  @override
  bool operator ==(Object other) {
    return ClientWantsToUpdatePlantMapper.ensureInitialized()
        .equalsValue(this as ClientWantsToUpdatePlant, other);
  }

  @override
  int get hashCode {
    return ClientWantsToUpdatePlantMapper.ensureInitialized()
        .hashValue(this as ClientWantsToUpdatePlant);
  }
}

extension ClientWantsToUpdatePlantValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientWantsToUpdatePlant, $Out> {
  ClientWantsToUpdatePlantCopyWith<$R, ClientWantsToUpdatePlant, $Out>
      get $asClientWantsToUpdatePlant => $base
          .as((v, t, t2) => _ClientWantsToUpdatePlantCopyWithImpl(v, t, t2));
}

abstract class ClientWantsToUpdatePlantCopyWith<
    $R,
    $In extends ClientWantsToUpdatePlant,
    $Out> implements ClientEventWithJwtCopyWith<$R, $In, $Out> {
  UpdatePlantDtoCopyWith<$R, UpdatePlantDto, UpdatePlantDto> get updatePlantDto;
  @override
  $R call({String? jwt, String? eventType, UpdatePlantDto? updatePlantDto});
  ClientWantsToUpdatePlantCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientWantsToUpdatePlantCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientWantsToUpdatePlant, $Out>
    implements
        ClientWantsToUpdatePlantCopyWith<$R, ClientWantsToUpdatePlant, $Out> {
  _ClientWantsToUpdatePlantCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientWantsToUpdatePlant> $mapper =
      ClientWantsToUpdatePlantMapper.ensureInitialized();
  @override
  UpdatePlantDtoCopyWith<$R, UpdatePlantDto, UpdatePlantDto>
      get updatePlantDto =>
          $value.updatePlantDto.copyWith.$chain((v) => call(updatePlantDto: v));
  @override
  $R call({String? jwt, String? eventType, UpdatePlantDto? updatePlantDto}) =>
      $apply(FieldCopyWithData({
        if (jwt != null) #jwt: jwt,
        if (eventType != null) #eventType: eventType,
        if (updatePlantDto != null) #updatePlantDto: updatePlantDto
      }));
  @override
  ClientWantsToUpdatePlant $make(CopyWithData data) => ClientWantsToUpdatePlant(
      jwt: data.get(#jwt, or: $value.jwt),
      eventType: data.get(#eventType, or: $value.eventType),
      updatePlantDto: data.get(#updatePlantDto, or: $value.updatePlantDto));

  @override
  ClientWantsToUpdatePlantCopyWith<$R2, ClientWantsToUpdatePlant, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ClientWantsToUpdatePlantCopyWithImpl($value, $cast, t);
}

class ClientWantsPlantByIdMapper
    extends SubClassMapperBase<ClientWantsPlantById> {
  ClientWantsPlantByIdMapper._();

  static ClientWantsPlantByIdMapper? _instance;
  static ClientWantsPlantByIdMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClientWantsPlantByIdMapper._());
      ClientEventWithJwtMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientWantsPlantById';

  static String _$jwt(ClientWantsPlantById v) => v.jwt;
  static const Field<ClientWantsPlantById, String> _f$jwt = Field('jwt', _$jwt);
  static String _$eventType(ClientWantsPlantById v) => v.eventType;
  static const Field<ClientWantsPlantById, String> _f$eventType =
      Field('eventType', _$eventType, opt: true, def: "ClientWantsPlantById");
  static String _$plantId(ClientWantsPlantById v) => v.plantId;
  static const Field<ClientWantsPlantById, String> _f$plantId =
      Field('plantId', _$plantId);

  @override
  final MappableFields<ClientWantsPlantById> fields = const {
    #jwt: _f$jwt,
    #eventType: _f$eventType,
    #plantId: _f$plantId,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = "ClientWantsPlantById";
  @override
  late final ClassMapperBase superMapper =
      ClientEventWithJwtMapper.ensureInitialized();

  static ClientWantsPlantById _instantiate(DecodingData data) {
    return ClientWantsPlantById(
        jwt: data.dec(_f$jwt),
        eventType: data.dec(_f$eventType),
        plantId: data.dec(_f$plantId));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientWantsPlantById fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientWantsPlantById>(map);
  }

  static ClientWantsPlantById fromJson(String json) {
    return ensureInitialized().decodeJson<ClientWantsPlantById>(json);
  }
}

mixin ClientWantsPlantByIdMappable {
  String toJson() {
    return ClientWantsPlantByIdMapper.ensureInitialized()
        .encodeJson<ClientWantsPlantById>(this as ClientWantsPlantById);
  }

  Map<String, dynamic> toMap() {
    return ClientWantsPlantByIdMapper.ensureInitialized()
        .encodeMap<ClientWantsPlantById>(this as ClientWantsPlantById);
  }

  ClientWantsPlantByIdCopyWith<ClientWantsPlantById, ClientWantsPlantById,
          ClientWantsPlantById>
      get copyWith => _ClientWantsPlantByIdCopyWithImpl(
          this as ClientWantsPlantById, $identity, $identity);
  @override
  String toString() {
    return ClientWantsPlantByIdMapper.ensureInitialized()
        .stringifyValue(this as ClientWantsPlantById);
  }

  @override
  bool operator ==(Object other) {
    return ClientWantsPlantByIdMapper.ensureInitialized()
        .equalsValue(this as ClientWantsPlantById, other);
  }

  @override
  int get hashCode {
    return ClientWantsPlantByIdMapper.ensureInitialized()
        .hashValue(this as ClientWantsPlantById);
  }
}

extension ClientWantsPlantByIdValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientWantsPlantById, $Out> {
  ClientWantsPlantByIdCopyWith<$R, ClientWantsPlantById, $Out>
      get $asClientWantsPlantById =>
          $base.as((v, t, t2) => _ClientWantsPlantByIdCopyWithImpl(v, t, t2));
}

abstract class ClientWantsPlantByIdCopyWith<
    $R,
    $In extends ClientWantsPlantById,
    $Out> implements ClientEventWithJwtCopyWith<$R, $In, $Out> {
  @override
  $R call({String? jwt, String? eventType, String? plantId});
  ClientWantsPlantByIdCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientWantsPlantByIdCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientWantsPlantById, $Out>
    implements ClientWantsPlantByIdCopyWith<$R, ClientWantsPlantById, $Out> {
  _ClientWantsPlantByIdCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientWantsPlantById> $mapper =
      ClientWantsPlantByIdMapper.ensureInitialized();
  @override
  $R call({String? jwt, String? eventType, String? plantId}) =>
      $apply(FieldCopyWithData({
        if (jwt != null) #jwt: jwt,
        if (eventType != null) #eventType: eventType,
        if (plantId != null) #plantId: plantId
      }));
  @override
  ClientWantsPlantById $make(CopyWithData data) => ClientWantsPlantById(
      jwt: data.get(#jwt, or: $value.jwt),
      eventType: data.get(#eventType, or: $value.eventType),
      plantId: data.get(#plantId, or: $value.plantId));

  @override
  ClientWantsPlantByIdCopyWith<$R2, ClientWantsPlantById, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ClientWantsPlantByIdCopyWithImpl($value, $cast, t);
}

class ClientWantsToRemoveBackgroundFromImageMapper
    extends SubClassMapperBase<ClientWantsToRemoveBackgroundFromImage> {
  ClientWantsToRemoveBackgroundFromImageMapper._();

  static ClientWantsToRemoveBackgroundFromImageMapper? _instance;
  static ClientWantsToRemoveBackgroundFromImageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientWantsToRemoveBackgroundFromImageMapper._());
      ClientEventWithJwtMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientWantsToRemoveBackgroundFromImage';

  static String _$jwt(ClientWantsToRemoveBackgroundFromImage v) => v.jwt;
  static const Field<ClientWantsToRemoveBackgroundFromImage, String> _f$jwt =
      Field('jwt', _$jwt);
  static String _$eventType(ClientWantsToRemoveBackgroundFromImage v) =>
      v.eventType;
  static const Field<ClientWantsToRemoveBackgroundFromImage, String>
      _f$eventType = Field('eventType', _$eventType,
          opt: true, def: "ClientWantsToRemoveBackgroundFromImage");
  static String _$base64Image(ClientWantsToRemoveBackgroundFromImage v) =>
      v.base64Image;
  static const Field<ClientWantsToRemoveBackgroundFromImage, String>
      _f$base64Image = Field('base64Image', _$base64Image);

  @override
  final MappableFields<ClientWantsToRemoveBackgroundFromImage> fields = const {
    #jwt: _f$jwt,
    #eventType: _f$eventType,
    #base64Image: _f$base64Image,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = "ClientWantsToRemoveBackgroundFromImage";
  @override
  late final ClassMapperBase superMapper =
      ClientEventWithJwtMapper.ensureInitialized();

  static ClientWantsToRemoveBackgroundFromImage _instantiate(
      DecodingData data) {
    return ClientWantsToRemoveBackgroundFromImage(
        jwt: data.dec(_f$jwt),
        eventType: data.dec(_f$eventType),
        base64Image: data.dec(_f$base64Image));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientWantsToRemoveBackgroundFromImage fromMap(
      Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<ClientWantsToRemoveBackgroundFromImage>(map);
  }

  static ClientWantsToRemoveBackgroundFromImage fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ClientWantsToRemoveBackgroundFromImage>(json);
  }
}

mixin ClientWantsToRemoveBackgroundFromImageMappable {
  String toJson() {
    return ClientWantsToRemoveBackgroundFromImageMapper.ensureInitialized()
        .encodeJson<ClientWantsToRemoveBackgroundFromImage>(
            this as ClientWantsToRemoveBackgroundFromImage);
  }

  Map<String, dynamic> toMap() {
    return ClientWantsToRemoveBackgroundFromImageMapper.ensureInitialized()
        .encodeMap<ClientWantsToRemoveBackgroundFromImage>(
            this as ClientWantsToRemoveBackgroundFromImage);
  }

  ClientWantsToRemoveBackgroundFromImageCopyWith<
          ClientWantsToRemoveBackgroundFromImage,
          ClientWantsToRemoveBackgroundFromImage,
          ClientWantsToRemoveBackgroundFromImage>
      get copyWith => _ClientWantsToRemoveBackgroundFromImageCopyWithImpl(
          this as ClientWantsToRemoveBackgroundFromImage, $identity, $identity);
  @override
  String toString() {
    return ClientWantsToRemoveBackgroundFromImageMapper.ensureInitialized()
        .stringifyValue(this as ClientWantsToRemoveBackgroundFromImage);
  }

  @override
  bool operator ==(Object other) {
    return ClientWantsToRemoveBackgroundFromImageMapper.ensureInitialized()
        .equalsValue(this as ClientWantsToRemoveBackgroundFromImage, other);
  }

  @override
  int get hashCode {
    return ClientWantsToRemoveBackgroundFromImageMapper.ensureInitialized()
        .hashValue(this as ClientWantsToRemoveBackgroundFromImage);
  }
}

extension ClientWantsToRemoveBackgroundFromImageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientWantsToRemoveBackgroundFromImage, $Out> {
  ClientWantsToRemoveBackgroundFromImageCopyWith<$R,
          ClientWantsToRemoveBackgroundFromImage, $Out>
      get $asClientWantsToRemoveBackgroundFromImage => $base.as((v, t, t2) =>
          _ClientWantsToRemoveBackgroundFromImageCopyWithImpl(v, t, t2));
}

abstract class ClientWantsToRemoveBackgroundFromImageCopyWith<
    $R,
    $In extends ClientWantsToRemoveBackgroundFromImage,
    $Out> implements ClientEventWithJwtCopyWith<$R, $In, $Out> {
  @override
  $R call({String? jwt, String? eventType, String? base64Image});
  ClientWantsToRemoveBackgroundFromImageCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ClientWantsToRemoveBackgroundFromImageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientWantsToRemoveBackgroundFromImage, $Out>
    implements
        ClientWantsToRemoveBackgroundFromImageCopyWith<$R,
            ClientWantsToRemoveBackgroundFromImage, $Out> {
  _ClientWantsToRemoveBackgroundFromImageCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientWantsToRemoveBackgroundFromImage> $mapper =
      ClientWantsToRemoveBackgroundFromImageMapper.ensureInitialized();
  @override
  $R call({String? jwt, String? eventType, String? base64Image}) =>
      $apply(FieldCopyWithData({
        if (jwt != null) #jwt: jwt,
        if (eventType != null) #eventType: eventType,
        if (base64Image != null) #base64Image: base64Image
      }));
  @override
  ClientWantsToRemoveBackgroundFromImage $make(CopyWithData data) =>
      ClientWantsToRemoveBackgroundFromImage(
          jwt: data.get(#jwt, or: $value.jwt),
          eventType: data.get(#eventType, or: $value.eventType),
          base64Image: data.get(#base64Image, or: $value.base64Image));

  @override
  ClientWantsToRemoveBackgroundFromImageCopyWith<$R2,
      ClientWantsToRemoveBackgroundFromImage, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ClientWantsToRemoveBackgroundFromImageCopyWithImpl($value, $cast, t);
}

class ClientWantsToCreatePlantMapper
    extends SubClassMapperBase<ClientWantsToCreatePlant> {
  ClientWantsToCreatePlantMapper._();

  static ClientWantsToCreatePlantMapper? _instance;
  static ClientWantsToCreatePlantMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientWantsToCreatePlantMapper._());
      ClientEventWithJwtMapper.ensureInitialized().addSubMapper(_instance!);
      CreatePlantDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ClientWantsToCreatePlant';

  static String _$jwt(ClientWantsToCreatePlant v) => v.jwt;
  static const Field<ClientWantsToCreatePlant, String> _f$jwt =
      Field('jwt', _$jwt);
  static String _$eventType(ClientWantsToCreatePlant v) => v.eventType;
  static const Field<ClientWantsToCreatePlant, String> _f$eventType = Field(
      'eventType', _$eventType,
      opt: true, def: "ClientWantsToCreatePlant");
  static CreatePlantDto _$createPlantDto(ClientWantsToCreatePlant v) =>
      v.createPlantDto;
  static const Field<ClientWantsToCreatePlant, CreatePlantDto>
      _f$createPlantDto = Field('createPlantDto', _$createPlantDto);

  @override
  final MappableFields<ClientWantsToCreatePlant> fields = const {
    #jwt: _f$jwt,
    #eventType: _f$eventType,
    #createPlantDto: _f$createPlantDto,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = "ClientWantsToCreatePlant";
  @override
  late final ClassMapperBase superMapper =
      ClientEventWithJwtMapper.ensureInitialized();

  static ClientWantsToCreatePlant _instantiate(DecodingData data) {
    return ClientWantsToCreatePlant(
        jwt: data.dec(_f$jwt),
        eventType: data.dec(_f$eventType),
        createPlantDto: data.dec(_f$createPlantDto));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientWantsToCreatePlant fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientWantsToCreatePlant>(map);
  }

  static ClientWantsToCreatePlant fromJson(String json) {
    return ensureInitialized().decodeJson<ClientWantsToCreatePlant>(json);
  }
}

mixin ClientWantsToCreatePlantMappable {
  String toJson() {
    return ClientWantsToCreatePlantMapper.ensureInitialized()
        .encodeJson<ClientWantsToCreatePlant>(this as ClientWantsToCreatePlant);
  }

  Map<String, dynamic> toMap() {
    return ClientWantsToCreatePlantMapper.ensureInitialized()
        .encodeMap<ClientWantsToCreatePlant>(this as ClientWantsToCreatePlant);
  }

  ClientWantsToCreatePlantCopyWith<ClientWantsToCreatePlant,
          ClientWantsToCreatePlant, ClientWantsToCreatePlant>
      get copyWith => _ClientWantsToCreatePlantCopyWithImpl(
          this as ClientWantsToCreatePlant, $identity, $identity);
  @override
  String toString() {
    return ClientWantsToCreatePlantMapper.ensureInitialized()
        .stringifyValue(this as ClientWantsToCreatePlant);
  }

  @override
  bool operator ==(Object other) {
    return ClientWantsToCreatePlantMapper.ensureInitialized()
        .equalsValue(this as ClientWantsToCreatePlant, other);
  }

  @override
  int get hashCode {
    return ClientWantsToCreatePlantMapper.ensureInitialized()
        .hashValue(this as ClientWantsToCreatePlant);
  }
}

extension ClientWantsToCreatePlantValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientWantsToCreatePlant, $Out> {
  ClientWantsToCreatePlantCopyWith<$R, ClientWantsToCreatePlant, $Out>
      get $asClientWantsToCreatePlant => $base
          .as((v, t, t2) => _ClientWantsToCreatePlantCopyWithImpl(v, t, t2));
}

abstract class ClientWantsToCreatePlantCopyWith<
    $R,
    $In extends ClientWantsToCreatePlant,
    $Out> implements ClientEventWithJwtCopyWith<$R, $In, $Out> {
  CreatePlantDtoCopyWith<$R, CreatePlantDto, CreatePlantDto> get createPlantDto;
  @override
  $R call({String? jwt, String? eventType, CreatePlantDto? createPlantDto});
  ClientWantsToCreatePlantCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientWantsToCreatePlantCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientWantsToCreatePlant, $Out>
    implements
        ClientWantsToCreatePlantCopyWith<$R, ClientWantsToCreatePlant, $Out> {
  _ClientWantsToCreatePlantCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientWantsToCreatePlant> $mapper =
      ClientWantsToCreatePlantMapper.ensureInitialized();
  @override
  CreatePlantDtoCopyWith<$R, CreatePlantDto, CreatePlantDto>
      get createPlantDto =>
          $value.createPlantDto.copyWith.$chain((v) => call(createPlantDto: v));
  @override
  $R call({String? jwt, String? eventType, CreatePlantDto? createPlantDto}) =>
      $apply(FieldCopyWithData({
        if (jwt != null) #jwt: jwt,
        if (eventType != null) #eventType: eventType,
        if (createPlantDto != null) #createPlantDto: createPlantDto
      }));
  @override
  ClientWantsToCreatePlant $make(CopyWithData data) => ClientWantsToCreatePlant(
      jwt: data.get(#jwt, or: $value.jwt),
      eventType: data.get(#eventType, or: $value.eventType),
      createPlantDto: data.get(#createPlantDto, or: $value.createPlantDto));

  @override
  ClientWantsToCreatePlantCopyWith<$R2, ClientWantsToCreatePlant, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ClientWantsToCreatePlantCopyWithImpl($value, $cast, t);
}

class ClientWantsLatestConditionsForPlantMapper
    extends SubClassMapperBase<ClientWantsLatestConditionsForPlant> {
  ClientWantsLatestConditionsForPlantMapper._();

  static ClientWantsLatestConditionsForPlantMapper? _instance;
  static ClientWantsLatestConditionsForPlantMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientWantsLatestConditionsForPlantMapper._());
      ClientEventWithJwtMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientWantsLatestConditionsForPlant';

  static String _$jwt(ClientWantsLatestConditionsForPlant v) => v.jwt;
  static const Field<ClientWantsLatestConditionsForPlant, String> _f$jwt =
      Field('jwt', _$jwt);
  static String _$plantId(ClientWantsLatestConditionsForPlant v) => v.plantId;
  static const Field<ClientWantsLatestConditionsForPlant, String> _f$plantId =
      Field('plantId', _$plantId);
  static String _$eventType(ClientWantsLatestConditionsForPlant v) =>
      v.eventType;
  static const Field<ClientWantsLatestConditionsForPlant, String> _f$eventType =
      Field('eventType', _$eventType,
          opt: true, def: "ClientWantsLatestConditionsForPlant");

  @override
  final MappableFields<ClientWantsLatestConditionsForPlant> fields = const {
    #jwt: _f$jwt,
    #plantId: _f$plantId,
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = "ClientWantsLatestConditionsForPlant";
  @override
  late final ClassMapperBase superMapper =
      ClientEventWithJwtMapper.ensureInitialized();

  static ClientWantsLatestConditionsForPlant _instantiate(DecodingData data) {
    return ClientWantsLatestConditionsForPlant(
        jwt: data.dec(_f$jwt),
        plantId: data.dec(_f$plantId),
        eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientWantsLatestConditionsForPlant fromMap(Map<String, dynamic> map) {
    return ensureInitialized()
        .decodeMap<ClientWantsLatestConditionsForPlant>(map);
  }

  static ClientWantsLatestConditionsForPlant fromJson(String json) {
    return ensureInitialized()
        .decodeJson<ClientWantsLatestConditionsForPlant>(json);
  }
}

mixin ClientWantsLatestConditionsForPlantMappable {
  String toJson() {
    return ClientWantsLatestConditionsForPlantMapper.ensureInitialized()
        .encodeJson<ClientWantsLatestConditionsForPlant>(
            this as ClientWantsLatestConditionsForPlant);
  }

  Map<String, dynamic> toMap() {
    return ClientWantsLatestConditionsForPlantMapper.ensureInitialized()
        .encodeMap<ClientWantsLatestConditionsForPlant>(
            this as ClientWantsLatestConditionsForPlant);
  }

  ClientWantsLatestConditionsForPlantCopyWith<
          ClientWantsLatestConditionsForPlant,
          ClientWantsLatestConditionsForPlant,
          ClientWantsLatestConditionsForPlant>
      get copyWith => _ClientWantsLatestConditionsForPlantCopyWithImpl(
          this as ClientWantsLatestConditionsForPlant, $identity, $identity);
  @override
  String toString() {
    return ClientWantsLatestConditionsForPlantMapper.ensureInitialized()
        .stringifyValue(this as ClientWantsLatestConditionsForPlant);
  }

  @override
  bool operator ==(Object other) {
    return ClientWantsLatestConditionsForPlantMapper.ensureInitialized()
        .equalsValue(this as ClientWantsLatestConditionsForPlant, other);
  }

  @override
  int get hashCode {
    return ClientWantsLatestConditionsForPlantMapper.ensureInitialized()
        .hashValue(this as ClientWantsLatestConditionsForPlant);
  }
}

extension ClientWantsLatestConditionsForPlantValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientWantsLatestConditionsForPlant, $Out> {
  ClientWantsLatestConditionsForPlantCopyWith<$R,
          ClientWantsLatestConditionsForPlant, $Out>
      get $asClientWantsLatestConditionsForPlant => $base.as((v, t, t2) =>
          _ClientWantsLatestConditionsForPlantCopyWithImpl(v, t, t2));
}

abstract class ClientWantsLatestConditionsForPlantCopyWith<
    $R,
    $In extends ClientWantsLatestConditionsForPlant,
    $Out> implements ClientEventWithJwtCopyWith<$R, $In, $Out> {
  @override
  $R call({String? jwt, String? plantId, String? eventType});
  ClientWantsLatestConditionsForPlantCopyWith<$R2, $In, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ClientWantsLatestConditionsForPlantCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientWantsLatestConditionsForPlant, $Out>
    implements
        ClientWantsLatestConditionsForPlantCopyWith<$R,
            ClientWantsLatestConditionsForPlant, $Out> {
  _ClientWantsLatestConditionsForPlantCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientWantsLatestConditionsForPlant> $mapper =
      ClientWantsLatestConditionsForPlantMapper.ensureInitialized();
  @override
  $R call({String? jwt, String? plantId, String? eventType}) =>
      $apply(FieldCopyWithData({
        if (jwt != null) #jwt: jwt,
        if (plantId != null) #plantId: plantId,
        if (eventType != null) #eventType: eventType
      }));
  @override
  ClientWantsLatestConditionsForPlant $make(CopyWithData data) =>
      ClientWantsLatestConditionsForPlant(
          jwt: data.get(#jwt, or: $value.jwt),
          plantId: data.get(#plantId, or: $value.plantId),
          eventType: data.get(#eventType, or: $value.eventType));

  @override
  ClientWantsLatestConditionsForPlantCopyWith<$R2,
      ClientWantsLatestConditionsForPlant, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ClientWantsLatestConditionsForPlantCopyWithImpl($value, $cast, t);
}

class ClientWantsAllCollectionsMapper
    extends SubClassMapperBase<ClientWantsAllCollections> {
  ClientWantsAllCollectionsMapper._();

  static ClientWantsAllCollectionsMapper? _instance;
  static ClientWantsAllCollectionsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientWantsAllCollectionsMapper._());
      ClientEventWithJwtMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientWantsAllCollections';

  static String _$jwt(ClientWantsAllCollections v) => v.jwt;
  static const Field<ClientWantsAllCollections, String> _f$jwt =
      Field('jwt', _$jwt);
  static String _$eventType(ClientWantsAllCollections v) => v.eventType;
  static const Field<ClientWantsAllCollections, String> _f$eventType = Field(
      'eventType', _$eventType,
      opt: true, def: "ClientWantsAllCollections");

  @override
  final MappableFields<ClientWantsAllCollections> fields = const {
    #jwt: _f$jwt,
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = "ClientWantsAllCollections";
  @override
  late final ClassMapperBase superMapper =
      ClientEventWithJwtMapper.ensureInitialized();

  static ClientWantsAllCollections _instantiate(DecodingData data) {
    return ClientWantsAllCollections(
        jwt: data.dec(_f$jwt), eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientWantsAllCollections fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientWantsAllCollections>(map);
  }

  static ClientWantsAllCollections fromJson(String json) {
    return ensureInitialized().decodeJson<ClientWantsAllCollections>(json);
  }
}

mixin ClientWantsAllCollectionsMappable {
  String toJson() {
    return ClientWantsAllCollectionsMapper.ensureInitialized()
        .encodeJson<ClientWantsAllCollections>(
            this as ClientWantsAllCollections);
  }

  Map<String, dynamic> toMap() {
    return ClientWantsAllCollectionsMapper.ensureInitialized()
        .encodeMap<ClientWantsAllCollections>(
            this as ClientWantsAllCollections);
  }

  ClientWantsAllCollectionsCopyWith<ClientWantsAllCollections,
          ClientWantsAllCollections, ClientWantsAllCollections>
      get copyWith => _ClientWantsAllCollectionsCopyWithImpl(
          this as ClientWantsAllCollections, $identity, $identity);
  @override
  String toString() {
    return ClientWantsAllCollectionsMapper.ensureInitialized()
        .stringifyValue(this as ClientWantsAllCollections);
  }

  @override
  bool operator ==(Object other) {
    return ClientWantsAllCollectionsMapper.ensureInitialized()
        .equalsValue(this as ClientWantsAllCollections, other);
  }

  @override
  int get hashCode {
    return ClientWantsAllCollectionsMapper.ensureInitialized()
        .hashValue(this as ClientWantsAllCollections);
  }
}

extension ClientWantsAllCollectionsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientWantsAllCollections, $Out> {
  ClientWantsAllCollectionsCopyWith<$R, ClientWantsAllCollections, $Out>
      get $asClientWantsAllCollections => $base
          .as((v, t, t2) => _ClientWantsAllCollectionsCopyWithImpl(v, t, t2));
}

abstract class ClientWantsAllCollectionsCopyWith<
    $R,
    $In extends ClientWantsAllCollections,
    $Out> implements ClientEventWithJwtCopyWith<$R, $In, $Out> {
  @override
  $R call({String? jwt, String? eventType});
  ClientWantsAllCollectionsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientWantsAllCollectionsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientWantsAllCollections, $Out>
    implements
        ClientWantsAllCollectionsCopyWith<$R, ClientWantsAllCollections, $Out> {
  _ClientWantsAllCollectionsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientWantsAllCollections> $mapper =
      ClientWantsAllCollectionsMapper.ensureInitialized();
  @override
  $R call({String? jwt, String? eventType}) => $apply(FieldCopyWithData({
        if (jwt != null) #jwt: jwt,
        if (eventType != null) #eventType: eventType
      }));
  @override
  ClientWantsAllCollections $make(CopyWithData data) =>
      ClientWantsAllCollections(
          jwt: data.get(#jwt, or: $value.jwt),
          eventType: data.get(#eventType, or: $value.eventType));

  @override
  ClientWantsAllCollectionsCopyWith<$R2, ClientWantsAllCollections, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ClientWantsAllCollectionsCopyWithImpl($value, $cast, t);
}

class ClientWantsPlantsForCollectionMapper
    extends SubClassMapperBase<ClientWantsPlantsForCollection> {
  ClientWantsPlantsForCollectionMapper._();

  static ClientWantsPlantsForCollectionMapper? _instance;
  static ClientWantsPlantsForCollectionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientWantsPlantsForCollectionMapper._());
      ClientEventWithJwtMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientWantsPlantsForCollection';

  static String _$jwt(ClientWantsPlantsForCollection v) => v.jwt;
  static const Field<ClientWantsPlantsForCollection, String> _f$jwt =
      Field('jwt', _$jwt);
  static String _$collectionId(ClientWantsPlantsForCollection v) =>
      v.collectionId;
  static const Field<ClientWantsPlantsForCollection, String> _f$collectionId =
      Field('collectionId', _$collectionId);
  static String _$eventType(ClientWantsPlantsForCollection v) => v.eventType;
  static const Field<ClientWantsPlantsForCollection, String> _f$eventType =
      Field('eventType', _$eventType,
          opt: true, def: "ClientWantsPlantsForCollection");

  @override
  final MappableFields<ClientWantsPlantsForCollection> fields = const {
    #jwt: _f$jwt,
    #collectionId: _f$collectionId,
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = "ClientWantsPlantsForCollection";
  @override
  late final ClassMapperBase superMapper =
      ClientEventWithJwtMapper.ensureInitialized();

  static ClientWantsPlantsForCollection _instantiate(DecodingData data) {
    return ClientWantsPlantsForCollection(
        jwt: data.dec(_f$jwt),
        collectionId: data.dec(_f$collectionId),
        eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientWantsPlantsForCollection fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientWantsPlantsForCollection>(map);
  }

  static ClientWantsPlantsForCollection fromJson(String json) {
    return ensureInitialized().decodeJson<ClientWantsPlantsForCollection>(json);
  }
}

mixin ClientWantsPlantsForCollectionMappable {
  String toJson() {
    return ClientWantsPlantsForCollectionMapper.ensureInitialized()
        .encodeJson<ClientWantsPlantsForCollection>(
            this as ClientWantsPlantsForCollection);
  }

  Map<String, dynamic> toMap() {
    return ClientWantsPlantsForCollectionMapper.ensureInitialized()
        .encodeMap<ClientWantsPlantsForCollection>(
            this as ClientWantsPlantsForCollection);
  }

  ClientWantsPlantsForCollectionCopyWith<ClientWantsPlantsForCollection,
          ClientWantsPlantsForCollection, ClientWantsPlantsForCollection>
      get copyWith => _ClientWantsPlantsForCollectionCopyWithImpl(
          this as ClientWantsPlantsForCollection, $identity, $identity);
  @override
  String toString() {
    return ClientWantsPlantsForCollectionMapper.ensureInitialized()
        .stringifyValue(this as ClientWantsPlantsForCollection);
  }

  @override
  bool operator ==(Object other) {
    return ClientWantsPlantsForCollectionMapper.ensureInitialized()
        .equalsValue(this as ClientWantsPlantsForCollection, other);
  }

  @override
  int get hashCode {
    return ClientWantsPlantsForCollectionMapper.ensureInitialized()
        .hashValue(this as ClientWantsPlantsForCollection);
  }
}

extension ClientWantsPlantsForCollectionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientWantsPlantsForCollection, $Out> {
  ClientWantsPlantsForCollectionCopyWith<$R, ClientWantsPlantsForCollection,
          $Out>
      get $asClientWantsPlantsForCollection => $base.as(
          (v, t, t2) => _ClientWantsPlantsForCollectionCopyWithImpl(v, t, t2));
}

abstract class ClientWantsPlantsForCollectionCopyWith<
    $R,
    $In extends ClientWantsPlantsForCollection,
    $Out> implements ClientEventWithJwtCopyWith<$R, $In, $Out> {
  @override
  $R call({String? jwt, String? collectionId, String? eventType});
  ClientWantsPlantsForCollectionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientWantsPlantsForCollectionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientWantsPlantsForCollection, $Out>
    implements
        ClientWantsPlantsForCollectionCopyWith<$R,
            ClientWantsPlantsForCollection, $Out> {
  _ClientWantsPlantsForCollectionCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientWantsPlantsForCollection> $mapper =
      ClientWantsPlantsForCollectionMapper.ensureInitialized();
  @override
  $R call({String? jwt, String? collectionId, String? eventType}) =>
      $apply(FieldCopyWithData({
        if (jwt != null) #jwt: jwt,
        if (collectionId != null) #collectionId: collectionId,
        if (eventType != null) #eventType: eventType
      }));
  @override
  ClientWantsPlantsForCollection $make(CopyWithData data) =>
      ClientWantsPlantsForCollection(
          jwt: data.get(#jwt, or: $value.jwt),
          collectionId: data.get(#collectionId, or: $value.collectionId),
          eventType: data.get(#eventType, or: $value.eventType));

  @override
  ClientWantsPlantsForCollectionCopyWith<$R2, ClientWantsPlantsForCollection,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ClientWantsPlantsForCollectionCopyWithImpl($value, $cast, t);
}

class ClientWantsToCreateCollectionMapper
    extends SubClassMapperBase<ClientWantsToCreateCollection> {
  ClientWantsToCreateCollectionMapper._();

  static ClientWantsToCreateCollectionMapper? _instance;
  static ClientWantsToCreateCollectionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientWantsToCreateCollectionMapper._());
      ClientEventWithJwtMapper.ensureInitialized().addSubMapper(_instance!);
      CreateCollectionDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ClientWantsToCreateCollection';

  static String _$jwt(ClientWantsToCreateCollection v) => v.jwt;
  static const Field<ClientWantsToCreateCollection, String> _f$jwt =
      Field('jwt', _$jwt);
  static CreateCollectionDto _$createCollectionDto(
          ClientWantsToCreateCollection v) =>
      v.createCollectionDto;
  static const Field<ClientWantsToCreateCollection, CreateCollectionDto>
      _f$createCollectionDto =
      Field('createCollectionDto', _$createCollectionDto);
  static String _$eventType(ClientWantsToCreateCollection v) => v.eventType;
  static const Field<ClientWantsToCreateCollection, String> _f$eventType =
      Field('eventType', _$eventType,
          opt: true, def: "ClientWantsToCreateCollection");

  @override
  final MappableFields<ClientWantsToCreateCollection> fields = const {
    #jwt: _f$jwt,
    #createCollectionDto: _f$createCollectionDto,
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = "ClientWantsToCreateCollection";
  @override
  late final ClassMapperBase superMapper =
      ClientEventWithJwtMapper.ensureInitialized();

  static ClientWantsToCreateCollection _instantiate(DecodingData data) {
    return ClientWantsToCreateCollection(
        jwt: data.dec(_f$jwt),
        createCollectionDto: data.dec(_f$createCollectionDto),
        eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientWantsToCreateCollection fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientWantsToCreateCollection>(map);
  }

  static ClientWantsToCreateCollection fromJson(String json) {
    return ensureInitialized().decodeJson<ClientWantsToCreateCollection>(json);
  }
}

mixin ClientWantsToCreateCollectionMappable {
  String toJson() {
    return ClientWantsToCreateCollectionMapper.ensureInitialized()
        .encodeJson<ClientWantsToCreateCollection>(
            this as ClientWantsToCreateCollection);
  }

  Map<String, dynamic> toMap() {
    return ClientWantsToCreateCollectionMapper.ensureInitialized()
        .encodeMap<ClientWantsToCreateCollection>(
            this as ClientWantsToCreateCollection);
  }

  ClientWantsToCreateCollectionCopyWith<ClientWantsToCreateCollection,
          ClientWantsToCreateCollection, ClientWantsToCreateCollection>
      get copyWith => _ClientWantsToCreateCollectionCopyWithImpl(
          this as ClientWantsToCreateCollection, $identity, $identity);
  @override
  String toString() {
    return ClientWantsToCreateCollectionMapper.ensureInitialized()
        .stringifyValue(this as ClientWantsToCreateCollection);
  }

  @override
  bool operator ==(Object other) {
    return ClientWantsToCreateCollectionMapper.ensureInitialized()
        .equalsValue(this as ClientWantsToCreateCollection, other);
  }

  @override
  int get hashCode {
    return ClientWantsToCreateCollectionMapper.ensureInitialized()
        .hashValue(this as ClientWantsToCreateCollection);
  }
}

extension ClientWantsToCreateCollectionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientWantsToCreateCollection, $Out> {
  ClientWantsToCreateCollectionCopyWith<$R, ClientWantsToCreateCollection, $Out>
      get $asClientWantsToCreateCollection => $base.as(
          (v, t, t2) => _ClientWantsToCreateCollectionCopyWithImpl(v, t, t2));
}

abstract class ClientWantsToCreateCollectionCopyWith<
    $R,
    $In extends ClientWantsToCreateCollection,
    $Out> implements ClientEventWithJwtCopyWith<$R, $In, $Out> {
  CreateCollectionDtoCopyWith<$R, CreateCollectionDto, CreateCollectionDto>
      get createCollectionDto;
  @override
  $R call(
      {String? jwt,
      CreateCollectionDto? createCollectionDto,
      String? eventType});
  ClientWantsToCreateCollectionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientWantsToCreateCollectionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientWantsToCreateCollection, $Out>
    implements
        ClientWantsToCreateCollectionCopyWith<$R, ClientWantsToCreateCollection,
            $Out> {
  _ClientWantsToCreateCollectionCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientWantsToCreateCollection> $mapper =
      ClientWantsToCreateCollectionMapper.ensureInitialized();
  @override
  CreateCollectionDtoCopyWith<$R, CreateCollectionDto, CreateCollectionDto>
      get createCollectionDto => $value.createCollectionDto.copyWith
          .$chain((v) => call(createCollectionDto: v));
  @override
  $R call(
          {String? jwt,
          CreateCollectionDto? createCollectionDto,
          String? eventType}) =>
      $apply(FieldCopyWithData({
        if (jwt != null) #jwt: jwt,
        if (createCollectionDto != null)
          #createCollectionDto: createCollectionDto,
        if (eventType != null) #eventType: eventType
      }));
  @override
  ClientWantsToCreateCollection $make(CopyWithData data) =>
      ClientWantsToCreateCollection(
          jwt: data.get(#jwt, or: $value.jwt),
          createCollectionDto:
              data.get(#createCollectionDto, or: $value.createCollectionDto),
          eventType: data.get(#eventType, or: $value.eventType));

  @override
  ClientWantsToCreateCollectionCopyWith<$R2, ClientWantsToCreateCollection,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ClientWantsToCreateCollectionCopyWithImpl($value, $cast, t);
}

class ClientWantsToUpdateCollectionMapper
    extends SubClassMapperBase<ClientWantsToUpdateCollection> {
  ClientWantsToUpdateCollectionMapper._();

  static ClientWantsToUpdateCollectionMapper? _instance;
  static ClientWantsToUpdateCollectionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientWantsToUpdateCollectionMapper._());
      ClientEventWithJwtMapper.ensureInitialized().addSubMapper(_instance!);
      UpdateCollectionDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ClientWantsToUpdateCollection';

  static String _$jwt(ClientWantsToUpdateCollection v) => v.jwt;
  static const Field<ClientWantsToUpdateCollection, String> _f$jwt =
      Field('jwt', _$jwt);
  static UpdateCollectionDto _$updateCollectionDto(
          ClientWantsToUpdateCollection v) =>
      v.updateCollectionDto;
  static const Field<ClientWantsToUpdateCollection, UpdateCollectionDto>
      _f$updateCollectionDto =
      Field('updateCollectionDto', _$updateCollectionDto);
  static String _$eventType(ClientWantsToUpdateCollection v) => v.eventType;
  static const Field<ClientWantsToUpdateCollection, String> _f$eventType =
      Field('eventType', _$eventType,
          opt: true, def: "ClientWantsToUpdateCollection");

  @override
  final MappableFields<ClientWantsToUpdateCollection> fields = const {
    #jwt: _f$jwt,
    #updateCollectionDto: _f$updateCollectionDto,
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = "ClientWantsToUpdateCollection";
  @override
  late final ClassMapperBase superMapper =
      ClientEventWithJwtMapper.ensureInitialized();

  static ClientWantsToUpdateCollection _instantiate(DecodingData data) {
    return ClientWantsToUpdateCollection(
        jwt: data.dec(_f$jwt),
        updateCollectionDto: data.dec(_f$updateCollectionDto),
        eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientWantsToUpdateCollection fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientWantsToUpdateCollection>(map);
  }

  static ClientWantsToUpdateCollection fromJson(String json) {
    return ensureInitialized().decodeJson<ClientWantsToUpdateCollection>(json);
  }
}

mixin ClientWantsToUpdateCollectionMappable {
  String toJson() {
    return ClientWantsToUpdateCollectionMapper.ensureInitialized()
        .encodeJson<ClientWantsToUpdateCollection>(
            this as ClientWantsToUpdateCollection);
  }

  Map<String, dynamic> toMap() {
    return ClientWantsToUpdateCollectionMapper.ensureInitialized()
        .encodeMap<ClientWantsToUpdateCollection>(
            this as ClientWantsToUpdateCollection);
  }

  ClientWantsToUpdateCollectionCopyWith<ClientWantsToUpdateCollection,
          ClientWantsToUpdateCollection, ClientWantsToUpdateCollection>
      get copyWith => _ClientWantsToUpdateCollectionCopyWithImpl(
          this as ClientWantsToUpdateCollection, $identity, $identity);
  @override
  String toString() {
    return ClientWantsToUpdateCollectionMapper.ensureInitialized()
        .stringifyValue(this as ClientWantsToUpdateCollection);
  }

  @override
  bool operator ==(Object other) {
    return ClientWantsToUpdateCollectionMapper.ensureInitialized()
        .equalsValue(this as ClientWantsToUpdateCollection, other);
  }

  @override
  int get hashCode {
    return ClientWantsToUpdateCollectionMapper.ensureInitialized()
        .hashValue(this as ClientWantsToUpdateCollection);
  }
}

extension ClientWantsToUpdateCollectionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientWantsToUpdateCollection, $Out> {
  ClientWantsToUpdateCollectionCopyWith<$R, ClientWantsToUpdateCollection, $Out>
      get $asClientWantsToUpdateCollection => $base.as(
          (v, t, t2) => _ClientWantsToUpdateCollectionCopyWithImpl(v, t, t2));
}

abstract class ClientWantsToUpdateCollectionCopyWith<
    $R,
    $In extends ClientWantsToUpdateCollection,
    $Out> implements ClientEventWithJwtCopyWith<$R, $In, $Out> {
  UpdateCollectionDtoCopyWith<$R, UpdateCollectionDto, UpdateCollectionDto>
      get updateCollectionDto;
  @override
  $R call(
      {String? jwt,
      UpdateCollectionDto? updateCollectionDto,
      String? eventType});
  ClientWantsToUpdateCollectionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientWantsToUpdateCollectionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientWantsToUpdateCollection, $Out>
    implements
        ClientWantsToUpdateCollectionCopyWith<$R, ClientWantsToUpdateCollection,
            $Out> {
  _ClientWantsToUpdateCollectionCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientWantsToUpdateCollection> $mapper =
      ClientWantsToUpdateCollectionMapper.ensureInitialized();
  @override
  UpdateCollectionDtoCopyWith<$R, UpdateCollectionDto, UpdateCollectionDto>
      get updateCollectionDto => $value.updateCollectionDto.copyWith
          .$chain((v) => call(updateCollectionDto: v));
  @override
  $R call(
          {String? jwt,
          UpdateCollectionDto? updateCollectionDto,
          String? eventType}) =>
      $apply(FieldCopyWithData({
        if (jwt != null) #jwt: jwt,
        if (updateCollectionDto != null)
          #updateCollectionDto: updateCollectionDto,
        if (eventType != null) #eventType: eventType
      }));
  @override
  ClientWantsToUpdateCollection $make(CopyWithData data) =>
      ClientWantsToUpdateCollection(
          jwt: data.get(#jwt, or: $value.jwt),
          updateCollectionDto:
              data.get(#updateCollectionDto, or: $value.updateCollectionDto),
          eventType: data.get(#eventType, or: $value.eventType));

  @override
  ClientWantsToUpdateCollectionCopyWith<$R2, ClientWantsToUpdateCollection,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ClientWantsToUpdateCollectionCopyWithImpl($value, $cast, t);
}

class ClientWantsToDeleteCollectionMapper
    extends SubClassMapperBase<ClientWantsToDeleteCollection> {
  ClientWantsToDeleteCollectionMapper._();

  static ClientWantsToDeleteCollectionMapper? _instance;
  static ClientWantsToDeleteCollectionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientWantsToDeleteCollectionMapper._());
      ClientEventWithJwtMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientWantsToDeleteCollection';

  static String _$jwt(ClientWantsToDeleteCollection v) => v.jwt;
  static const Field<ClientWantsToDeleteCollection, String> _f$jwt =
      Field('jwt', _$jwt);
  static String _$collectionId(ClientWantsToDeleteCollection v) =>
      v.collectionId;
  static const Field<ClientWantsToDeleteCollection, String> _f$collectionId =
      Field('collectionId', _$collectionId);
  static String _$eventType(ClientWantsToDeleteCollection v) => v.eventType;
  static const Field<ClientWantsToDeleteCollection, String> _f$eventType =
      Field('eventType', _$eventType,
          opt: true, def: "ClientWantsToDeleteCollection");

  @override
  final MappableFields<ClientWantsToDeleteCollection> fields = const {
    #jwt: _f$jwt,
    #collectionId: _f$collectionId,
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = "ClientWantsToDeleteCollection";
  @override
  late final ClassMapperBase superMapper =
      ClientEventWithJwtMapper.ensureInitialized();

  static ClientWantsToDeleteCollection _instantiate(DecodingData data) {
    return ClientWantsToDeleteCollection(
        jwt: data.dec(_f$jwt),
        collectionId: data.dec(_f$collectionId),
        eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientWantsToDeleteCollection fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientWantsToDeleteCollection>(map);
  }

  static ClientWantsToDeleteCollection fromJson(String json) {
    return ensureInitialized().decodeJson<ClientWantsToDeleteCollection>(json);
  }
}

mixin ClientWantsToDeleteCollectionMappable {
  String toJson() {
    return ClientWantsToDeleteCollectionMapper.ensureInitialized()
        .encodeJson<ClientWantsToDeleteCollection>(
            this as ClientWantsToDeleteCollection);
  }

  Map<String, dynamic> toMap() {
    return ClientWantsToDeleteCollectionMapper.ensureInitialized()
        .encodeMap<ClientWantsToDeleteCollection>(
            this as ClientWantsToDeleteCollection);
  }

  ClientWantsToDeleteCollectionCopyWith<ClientWantsToDeleteCollection,
          ClientWantsToDeleteCollection, ClientWantsToDeleteCollection>
      get copyWith => _ClientWantsToDeleteCollectionCopyWithImpl(
          this as ClientWantsToDeleteCollection, $identity, $identity);
  @override
  String toString() {
    return ClientWantsToDeleteCollectionMapper.ensureInitialized()
        .stringifyValue(this as ClientWantsToDeleteCollection);
  }

  @override
  bool operator ==(Object other) {
    return ClientWantsToDeleteCollectionMapper.ensureInitialized()
        .equalsValue(this as ClientWantsToDeleteCollection, other);
  }

  @override
  int get hashCode {
    return ClientWantsToDeleteCollectionMapper.ensureInitialized()
        .hashValue(this as ClientWantsToDeleteCollection);
  }
}

extension ClientWantsToDeleteCollectionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientWantsToDeleteCollection, $Out> {
  ClientWantsToDeleteCollectionCopyWith<$R, ClientWantsToDeleteCollection, $Out>
      get $asClientWantsToDeleteCollection => $base.as(
          (v, t, t2) => _ClientWantsToDeleteCollectionCopyWithImpl(v, t, t2));
}

abstract class ClientWantsToDeleteCollectionCopyWith<
    $R,
    $In extends ClientWantsToDeleteCollection,
    $Out> implements ClientEventWithJwtCopyWith<$R, $In, $Out> {
  @override
  $R call({String? jwt, String? collectionId, String? eventType});
  ClientWantsToDeleteCollectionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientWantsToDeleteCollectionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientWantsToDeleteCollection, $Out>
    implements
        ClientWantsToDeleteCollectionCopyWith<$R, ClientWantsToDeleteCollection,
            $Out> {
  _ClientWantsToDeleteCollectionCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientWantsToDeleteCollection> $mapper =
      ClientWantsToDeleteCollectionMapper.ensureInitialized();
  @override
  $R call({String? jwt, String? collectionId, String? eventType}) =>
      $apply(FieldCopyWithData({
        if (jwt != null) #jwt: jwt,
        if (collectionId != null) #collectionId: collectionId,
        if (eventType != null) #eventType: eventType
      }));
  @override
  ClientWantsToDeleteCollection $make(CopyWithData data) =>
      ClientWantsToDeleteCollection(
          jwt: data.get(#jwt, or: $value.jwt),
          collectionId: data.get(#collectionId, or: $value.collectionId),
          eventType: data.get(#eventType, or: $value.eventType));

  @override
  ClientWantsToDeleteCollectionCopyWith<$R2, ClientWantsToDeleteCollection,
      $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ClientWantsToDeleteCollectionCopyWithImpl($value, $cast, t);
}

class ClientWantsToUpdateProfileMapper
    extends SubClassMapperBase<ClientWantsToUpdateProfile> {
  ClientWantsToUpdateProfileMapper._();

  static ClientWantsToUpdateProfileMapper? _instance;
  static ClientWantsToUpdateProfileMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ClientWantsToUpdateProfileMapper._());
      ClientEventWithJwtMapper.ensureInitialized().addSubMapper(_instance!);
      UpdateUserDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ClientWantsToUpdateProfile';

  static String _$jwt(ClientWantsToUpdateProfile v) => v.jwt;
  static const Field<ClientWantsToUpdateProfile, String> _f$jwt =
      Field('jwt', _$jwt);
  static UpdateUserDto _$updateUserDto(ClientWantsToUpdateProfile v) =>
      v.updateUserDto;
  static const Field<ClientWantsToUpdateProfile, UpdateUserDto>
      _f$updateUserDto = Field('updateUserDto', _$updateUserDto);
  static String _$eventType(ClientWantsToUpdateProfile v) => v.eventType;
  static const Field<ClientWantsToUpdateProfile, String> _f$eventType = Field(
      'eventType', _$eventType,
      opt: true, def: "ClientWantsToUpdateProfile");

  @override
  final MappableFields<ClientWantsToUpdateProfile> fields = const {
    #jwt: _f$jwt,
    #updateUserDto: _f$updateUserDto,
    #eventType: _f$eventType,
  };

  @override
  final String discriminatorKey = 'eventType';
  @override
  final dynamic discriminatorValue = "ClientWantsToUpdateProfile";
  @override
  late final ClassMapperBase superMapper =
      ClientEventWithJwtMapper.ensureInitialized();

  static ClientWantsToUpdateProfile _instantiate(DecodingData data) {
    return ClientWantsToUpdateProfile(
        jwt: data.dec(_f$jwt),
        updateUserDto: data.dec(_f$updateUserDto),
        eventType: data.dec(_f$eventType));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientWantsToUpdateProfile fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientWantsToUpdateProfile>(map);
  }

  static ClientWantsToUpdateProfile fromJson(String json) {
    return ensureInitialized().decodeJson<ClientWantsToUpdateProfile>(json);
  }
}

mixin ClientWantsToUpdateProfileMappable {
  String toJson() {
    return ClientWantsToUpdateProfileMapper.ensureInitialized()
        .encodeJson<ClientWantsToUpdateProfile>(
            this as ClientWantsToUpdateProfile);
  }

  Map<String, dynamic> toMap() {
    return ClientWantsToUpdateProfileMapper.ensureInitialized()
        .encodeMap<ClientWantsToUpdateProfile>(
            this as ClientWantsToUpdateProfile);
  }

  ClientWantsToUpdateProfileCopyWith<ClientWantsToUpdateProfile,
          ClientWantsToUpdateProfile, ClientWantsToUpdateProfile>
      get copyWith => _ClientWantsToUpdateProfileCopyWithImpl(
          this as ClientWantsToUpdateProfile, $identity, $identity);
  @override
  String toString() {
    return ClientWantsToUpdateProfileMapper.ensureInitialized()
        .stringifyValue(this as ClientWantsToUpdateProfile);
  }

  @override
  bool operator ==(Object other) {
    return ClientWantsToUpdateProfileMapper.ensureInitialized()
        .equalsValue(this as ClientWantsToUpdateProfile, other);
  }

  @override
  int get hashCode {
    return ClientWantsToUpdateProfileMapper.ensureInitialized()
        .hashValue(this as ClientWantsToUpdateProfile);
  }
}

extension ClientWantsToUpdateProfileValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientWantsToUpdateProfile, $Out> {
  ClientWantsToUpdateProfileCopyWith<$R, ClientWantsToUpdateProfile, $Out>
      get $asClientWantsToUpdateProfile => $base
          .as((v, t, t2) => _ClientWantsToUpdateProfileCopyWithImpl(v, t, t2));
}

abstract class ClientWantsToUpdateProfileCopyWith<
    $R,
    $In extends ClientWantsToUpdateProfile,
    $Out> implements ClientEventWithJwtCopyWith<$R, $In, $Out> {
  UpdateUserDtoCopyWith<$R, UpdateUserDto, UpdateUserDto> get updateUserDto;
  @override
  $R call({String? jwt, UpdateUserDto? updateUserDto, String? eventType});
  ClientWantsToUpdateProfileCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ClientWantsToUpdateProfileCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientWantsToUpdateProfile, $Out>
    implements
        ClientWantsToUpdateProfileCopyWith<$R, ClientWantsToUpdateProfile,
            $Out> {
  _ClientWantsToUpdateProfileCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientWantsToUpdateProfile> $mapper =
      ClientWantsToUpdateProfileMapper.ensureInitialized();
  @override
  UpdateUserDtoCopyWith<$R, UpdateUserDto, UpdateUserDto> get updateUserDto =>
      $value.updateUserDto.copyWith.$chain((v) => call(updateUserDto: v));
  @override
  $R call({String? jwt, UpdateUserDto? updateUserDto, String? eventType}) =>
      $apply(FieldCopyWithData({
        if (jwt != null) #jwt: jwt,
        if (updateUserDto != null) #updateUserDto: updateUserDto,
        if (eventType != null) #eventType: eventType
      }));
  @override
  ClientWantsToUpdateProfile $make(CopyWithData data) =>
      ClientWantsToUpdateProfile(
          jwt: data.get(#jwt, or: $value.jwt),
          updateUserDto: data.get(#updateUserDto, or: $value.updateUserDto),
          eventType: data.get(#eventType, or: $value.eventType));

  @override
  ClientWantsToUpdateProfileCopyWith<$R2, ClientWantsToUpdateProfile, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ClientWantsToUpdateProfileCopyWithImpl($value, $cast, t);
}
