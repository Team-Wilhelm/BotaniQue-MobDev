// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'plant.dart';

class PlantMapper extends ClassMapperBase<Plant> {
  PlantMapper._();

  static PlantMapper? _instance;
  static PlantMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlantMapper._());
      RequirementsMapper.ensureInitialized();
      ConditionsLogMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Plant';

  static String _$plantId(Plant v) => v.plantId;
  static const Field<Plant, String> _f$plantId = Field('plantId', _$plantId);
  static String? _$deviceID(Plant v) => v.deviceID;
  static const Field<Plant, String> _f$deviceID =
      Field('deviceID', _$deviceID, opt: true);
  static String _$userEmail(Plant v) => v.userEmail;
  static const Field<Plant, String> _f$userEmail =
      Field('userEmail', _$userEmail);
  static String? _$collectionId(Plant v) => v.collectionId;
  static const Field<Plant, String> _f$collectionId =
      Field('collectionId', _$collectionId, opt: true);
  static String _$nickname(Plant v) => v.nickname;
  static const Field<Plant, String> _f$nickname = Field('nickname', _$nickname);
  static String _$imageUrl(Plant v) => v.imageUrl;
  static const Field<Plant, String> _f$imageUrl = Field('imageUrl', _$imageUrl);
  static Requirements _$requirements(Plant v) => v.requirements;
  static const Field<Plant, Requirements> _f$requirements =
      Field('requirements', _$requirements);
  static List<ConditionsLog> _$conditionsLogs(Plant v) => v.conditionsLogs;
  static const Field<Plant, List<ConditionsLog>> _f$conditionsLogs =
      Field('conditionsLogs', _$conditionsLogs);

  @override
  final MappableFields<Plant> fields = const {
    #plantId: _f$plantId,
    #deviceID: _f$deviceID,
    #userEmail: _f$userEmail,
    #collectionId: _f$collectionId,
    #nickname: _f$nickname,
    #imageUrl: _f$imageUrl,
    #requirements: _f$requirements,
    #conditionsLogs: _f$conditionsLogs,
  };

  static Plant _instantiate(DecodingData data) {
    return Plant(
        plantId: data.dec(_f$plantId),
        deviceID: data.dec(_f$deviceID),
        userEmail: data.dec(_f$userEmail),
        collectionId: data.dec(_f$collectionId),
        nickname: data.dec(_f$nickname),
        imageUrl: data.dec(_f$imageUrl),
        requirements: data.dec(_f$requirements),
        conditionsLogs: data.dec(_f$conditionsLogs));
  }

  @override
  final Function instantiate = _instantiate;

  static Plant fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Plant>(map);
  }

  static Plant fromJson(String json) {
    return ensureInitialized().decodeJson<Plant>(json);
  }
}

mixin PlantMappable {
  String toJson() {
    return PlantMapper.ensureInitialized().encodeJson<Plant>(this as Plant);
  }

  Map<String, dynamic> toMap() {
    return PlantMapper.ensureInitialized().encodeMap<Plant>(this as Plant);
  }

  PlantCopyWith<Plant, Plant, Plant> get copyWith =>
      _PlantCopyWithImpl(this as Plant, $identity, $identity);
  @override
  String toString() {
    return PlantMapper.ensureInitialized().stringifyValue(this as Plant);
  }

  @override
  bool operator ==(Object other) {
    return PlantMapper.ensureInitialized().equalsValue(this as Plant, other);
  }

  @override
  int get hashCode {
    return PlantMapper.ensureInitialized().hashValue(this as Plant);
  }
}

extension PlantValueCopy<$R, $Out> on ObjectCopyWith<$R, Plant, $Out> {
  PlantCopyWith<$R, Plant, $Out> get $asPlant =>
      $base.as((v, t, t2) => _PlantCopyWithImpl(v, t, t2));
}

abstract class PlantCopyWith<$R, $In extends Plant, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  RequirementsCopyWith<$R, Requirements, Requirements> get requirements;
  ListCopyWith<$R, ConditionsLog,
          ConditionsLogCopyWith<$R, ConditionsLog, ConditionsLog>>
      get conditionsLogs;
  $R call(
      {String? plantId,
      String? deviceID,
      String? userEmail,
      String? collectionId,
      String? nickname,
      String? imageUrl,
      Requirements? requirements,
      List<ConditionsLog>? conditionsLogs});
  PlantCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlantCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Plant, $Out>
    implements PlantCopyWith<$R, Plant, $Out> {
  _PlantCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Plant> $mapper = PlantMapper.ensureInitialized();
  @override
  RequirementsCopyWith<$R, Requirements, Requirements> get requirements =>
      $value.requirements.copyWith.$chain((v) => call(requirements: v));
  @override
  ListCopyWith<$R, ConditionsLog,
          ConditionsLogCopyWith<$R, ConditionsLog, ConditionsLog>>
      get conditionsLogs => ListCopyWith($value.conditionsLogs,
          (v, t) => v.copyWith.$chain(t), (v) => call(conditionsLogs: v));
  @override
  $R call(
          {String? plantId,
          Object? deviceID = $none,
          String? userEmail,
          Object? collectionId = $none,
          String? nickname,
          String? imageUrl,
          Requirements? requirements,
          List<ConditionsLog>? conditionsLogs}) =>
      $apply(FieldCopyWithData({
        if (plantId != null) #plantId: plantId,
        if (deviceID != $none) #deviceID: deviceID,
        if (userEmail != null) #userEmail: userEmail,
        if (collectionId != $none) #collectionId: collectionId,
        if (nickname != null) #nickname: nickname,
        if (imageUrl != null) #imageUrl: imageUrl,
        if (requirements != null) #requirements: requirements,
        if (conditionsLogs != null) #conditionsLogs: conditionsLogs
      }));
  @override
  Plant $make(CopyWithData data) => Plant(
      plantId: data.get(#plantId, or: $value.plantId),
      deviceID: data.get(#deviceID, or: $value.deviceID),
      userEmail: data.get(#userEmail, or: $value.userEmail),
      collectionId: data.get(#collectionId, or: $value.collectionId),
      nickname: data.get(#nickname, or: $value.nickname),
      imageUrl: data.get(#imageUrl, or: $value.imageUrl),
      requirements: data.get(#requirements, or: $value.requirements),
      conditionsLogs: data.get(#conditionsLogs, or: $value.conditionsLogs));

  @override
  PlantCopyWith<$R2, Plant, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PlantCopyWithImpl($value, $cast, t);
}

class RequirementsMapper extends ClassMapperBase<Requirements> {
  RequirementsMapper._();

  static RequirementsMapper? _instance;
  static RequirementsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RequirementsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Requirements';

  static String _$requirementsId(Requirements v) => v.requirementsId;
  static const Field<Requirements, String> _f$requirementsId =
      Field('requirementsId', _$requirementsId);
  static String _$plantId(Requirements v) => v.plantId;
  static const Field<Requirements, String> _f$plantId =
      Field('plantId', _$plantId);
  static int _$lightLevel(Requirements v) => v.lightLevel;
  static const Field<Requirements, int> _f$lightLevel =
      Field('lightLevel', _$lightLevel);
  static int _$temperatureLevel(Requirements v) => v.temperatureLevel;
  static const Field<Requirements, int> _f$temperatureLevel =
      Field('temperatureLevel', _$temperatureLevel);
  static int _$humidityLevel(Requirements v) => v.humidityLevel;
  static const Field<Requirements, int> _f$humidityLevel =
      Field('humidityLevel', _$humidityLevel);
  static int _$soilMoistureLevel(Requirements v) => v.soilMoistureLevel;
  static const Field<Requirements, int> _f$soilMoistureLevel =
      Field('soilMoistureLevel', _$soilMoistureLevel);

  @override
  final MappableFields<Requirements> fields = const {
    #requirementsId: _f$requirementsId,
    #plantId: _f$plantId,
    #lightLevel: _f$lightLevel,
    #temperatureLevel: _f$temperatureLevel,
    #humidityLevel: _f$humidityLevel,
    #soilMoistureLevel: _f$soilMoistureLevel,
  };

  static Requirements _instantiate(DecodingData data) {
    return Requirements(
        requirementsId: data.dec(_f$requirementsId),
        plantId: data.dec(_f$plantId),
        lightLevel: data.dec(_f$lightLevel),
        temperatureLevel: data.dec(_f$temperatureLevel),
        humidityLevel: data.dec(_f$humidityLevel),
        soilMoistureLevel: data.dec(_f$soilMoistureLevel));
  }

  @override
  final Function instantiate = _instantiate;

  static Requirements fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Requirements>(map);
  }

  static Requirements fromJson(String json) {
    return ensureInitialized().decodeJson<Requirements>(json);
  }
}

mixin RequirementsMappable {
  String toJson() {
    return RequirementsMapper.ensureInitialized()
        .encodeJson<Requirements>(this as Requirements);
  }

  Map<String, dynamic> toMap() {
    return RequirementsMapper.ensureInitialized()
        .encodeMap<Requirements>(this as Requirements);
  }

  RequirementsCopyWith<Requirements, Requirements, Requirements> get copyWith =>
      _RequirementsCopyWithImpl(this as Requirements, $identity, $identity);
  @override
  String toString() {
    return RequirementsMapper.ensureInitialized()
        .stringifyValue(this as Requirements);
  }

  @override
  bool operator ==(Object other) {
    return RequirementsMapper.ensureInitialized()
        .equalsValue(this as Requirements, other);
  }

  @override
  int get hashCode {
    return RequirementsMapper.ensureInitialized()
        .hashValue(this as Requirements);
  }
}

extension RequirementsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Requirements, $Out> {
  RequirementsCopyWith<$R, Requirements, $Out> get $asRequirements =>
      $base.as((v, t, t2) => _RequirementsCopyWithImpl(v, t, t2));
}

abstract class RequirementsCopyWith<$R, $In extends Requirements, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? requirementsId,
      String? plantId,
      int? lightLevel,
      int? temperatureLevel,
      int? humidityLevel,
      int? soilMoistureLevel});
  RequirementsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RequirementsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Requirements, $Out>
    implements RequirementsCopyWith<$R, Requirements, $Out> {
  _RequirementsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Requirements> $mapper =
      RequirementsMapper.ensureInitialized();
  @override
  $R call(
          {String? requirementsId,
          String? plantId,
          int? lightLevel,
          int? temperatureLevel,
          int? humidityLevel,
          int? soilMoistureLevel}) =>
      $apply(FieldCopyWithData({
        if (requirementsId != null) #requirementsId: requirementsId,
        if (plantId != null) #plantId: plantId,
        if (lightLevel != null) #lightLevel: lightLevel,
        if (temperatureLevel != null) #temperatureLevel: temperatureLevel,
        if (humidityLevel != null) #humidityLevel: humidityLevel,
        if (soilMoistureLevel != null) #soilMoistureLevel: soilMoistureLevel
      }));
  @override
  Requirements $make(CopyWithData data) => Requirements(
      requirementsId: data.get(#requirementsId, or: $value.requirementsId),
      plantId: data.get(#plantId, or: $value.plantId),
      lightLevel: data.get(#lightLevel, or: $value.lightLevel),
      temperatureLevel:
          data.get(#temperatureLevel, or: $value.temperatureLevel),
      humidityLevel: data.get(#humidityLevel, or: $value.humidityLevel),
      soilMoistureLevel:
          data.get(#soilMoistureLevel, or: $value.soilMoistureLevel));

  @override
  RequirementsCopyWith<$R2, Requirements, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RequirementsCopyWithImpl($value, $cast, t);
}

class CreatePlantDtoMapper extends ClassMapperBase<CreatePlantDto> {
  CreatePlantDtoMapper._();

  static CreatePlantDtoMapper? _instance;
  static CreatePlantDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreatePlantDtoMapper._());
      CreateRequirementsDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CreatePlantDto';

  static String? _$collectionId(CreatePlantDto v) => v.collectionId;
  static const Field<CreatePlantDto, String> _f$collectionId =
      Field('collectionId', _$collectionId);
  static String? _$deviceId(CreatePlantDto v) => v.deviceId;
  static const Field<CreatePlantDto, String> _f$deviceId =
      Field('deviceId', _$deviceId);
  static String _$nickname(CreatePlantDto v) => v.nickname;
  static const Field<CreatePlantDto, String> _f$nickname =
      Field('nickname', _$nickname);
  static String? _$base64Image(CreatePlantDto v) => v.base64Image;
  static const Field<CreatePlantDto, String> _f$base64Image =
      Field('base64Image', _$base64Image);
  static CreateRequirementsDto _$createRequirementsDto(CreatePlantDto v) =>
      v.createRequirementsDto;
  static const Field<CreatePlantDto, CreateRequirementsDto>
      _f$createRequirementsDto =
      Field('createRequirementsDto', _$createRequirementsDto);

  @override
  final MappableFields<CreatePlantDto> fields = const {
    #collectionId: _f$collectionId,
    #deviceId: _f$deviceId,
    #nickname: _f$nickname,
    #base64Image: _f$base64Image,
    #createRequirementsDto: _f$createRequirementsDto,
  };

  static CreatePlantDto _instantiate(DecodingData data) {
    return CreatePlantDto(
        collectionId: data.dec(_f$collectionId),
        deviceId: data.dec(_f$deviceId),
        nickname: data.dec(_f$nickname),
        base64Image: data.dec(_f$base64Image),
        createRequirementsDto: data.dec(_f$createRequirementsDto));
  }

  @override
  final Function instantiate = _instantiate;

  static CreatePlantDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreatePlantDto>(map);
  }

  static CreatePlantDto fromJson(String json) {
    return ensureInitialized().decodeJson<CreatePlantDto>(json);
  }
}

mixin CreatePlantDtoMappable {
  String toJson() {
    return CreatePlantDtoMapper.ensureInitialized()
        .encodeJson<CreatePlantDto>(this as CreatePlantDto);
  }

  Map<String, dynamic> toMap() {
    return CreatePlantDtoMapper.ensureInitialized()
        .encodeMap<CreatePlantDto>(this as CreatePlantDto);
  }

  CreatePlantDtoCopyWith<CreatePlantDto, CreatePlantDto, CreatePlantDto>
      get copyWith => _CreatePlantDtoCopyWithImpl(
          this as CreatePlantDto, $identity, $identity);
  @override
  String toString() {
    return CreatePlantDtoMapper.ensureInitialized()
        .stringifyValue(this as CreatePlantDto);
  }

  @override
  bool operator ==(Object other) {
    return CreatePlantDtoMapper.ensureInitialized()
        .equalsValue(this as CreatePlantDto, other);
  }

  @override
  int get hashCode {
    return CreatePlantDtoMapper.ensureInitialized()
        .hashValue(this as CreatePlantDto);
  }
}

extension CreatePlantDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreatePlantDto, $Out> {
  CreatePlantDtoCopyWith<$R, CreatePlantDto, $Out> get $asCreatePlantDto =>
      $base.as((v, t, t2) => _CreatePlantDtoCopyWithImpl(v, t, t2));
}

abstract class CreatePlantDtoCopyWith<$R, $In extends CreatePlantDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  CreateRequirementsDtoCopyWith<$R, CreateRequirementsDto,
      CreateRequirementsDto> get createRequirementsDto;
  $R call(
      {String? collectionId,
      String? deviceId,
      String? nickname,
      String? base64Image,
      CreateRequirementsDto? createRequirementsDto});
  CreatePlantDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CreatePlantDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreatePlantDto, $Out>
    implements CreatePlantDtoCopyWith<$R, CreatePlantDto, $Out> {
  _CreatePlantDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreatePlantDto> $mapper =
      CreatePlantDtoMapper.ensureInitialized();
  @override
  CreateRequirementsDtoCopyWith<$R, CreateRequirementsDto,
          CreateRequirementsDto>
      get createRequirementsDto => $value.createRequirementsDto.copyWith
          .$chain((v) => call(createRequirementsDto: v));
  @override
  $R call(
          {Object? collectionId = $none,
          Object? deviceId = $none,
          String? nickname,
          Object? base64Image = $none,
          CreateRequirementsDto? createRequirementsDto}) =>
      $apply(FieldCopyWithData({
        if (collectionId != $none) #collectionId: collectionId,
        if (deviceId != $none) #deviceId: deviceId,
        if (nickname != null) #nickname: nickname,
        if (base64Image != $none) #base64Image: base64Image,
        if (createRequirementsDto != null)
          #createRequirementsDto: createRequirementsDto
      }));
  @override
  CreatePlantDto $make(CopyWithData data) => CreatePlantDto(
      collectionId: data.get(#collectionId, or: $value.collectionId),
      deviceId: data.get(#deviceId, or: $value.deviceId),
      nickname: data.get(#nickname, or: $value.nickname),
      base64Image: data.get(#base64Image, or: $value.base64Image),
      createRequirementsDto:
          data.get(#createRequirementsDto, or: $value.createRequirementsDto));

  @override
  CreatePlantDtoCopyWith<$R2, CreatePlantDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CreatePlantDtoCopyWithImpl($value, $cast, t);
}

class CreateRequirementsDtoMapper
    extends ClassMapperBase<CreateRequirementsDto> {
  CreateRequirementsDtoMapper._();

  static CreateRequirementsDtoMapper? _instance;
  static CreateRequirementsDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreateRequirementsDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CreateRequirementsDto';

  static int _$soilMoistureLevel(CreateRequirementsDto v) =>
      v.soilMoistureLevel;
  static const Field<CreateRequirementsDto, int> _f$soilMoistureLevel =
      Field('soilMoistureLevel', _$soilMoistureLevel);
  static int _$lightLevel(CreateRequirementsDto v) => v.lightLevel;
  static const Field<CreateRequirementsDto, int> _f$lightLevel =
      Field('lightLevel', _$lightLevel);
  static int _$temperatureLevel(CreateRequirementsDto v) => v.temperatureLevel;
  static const Field<CreateRequirementsDto, int> _f$temperatureLevel =
      Field('temperatureLevel', _$temperatureLevel);
  static int _$humidityLevel(CreateRequirementsDto v) => v.humidityLevel;
  static const Field<CreateRequirementsDto, int> _f$humidityLevel =
      Field('humidityLevel', _$humidityLevel);

  @override
  final MappableFields<CreateRequirementsDto> fields = const {
    #soilMoistureLevel: _f$soilMoistureLevel,
    #lightLevel: _f$lightLevel,
    #temperatureLevel: _f$temperatureLevel,
    #humidityLevel: _f$humidityLevel,
  };

  static CreateRequirementsDto _instantiate(DecodingData data) {
    return CreateRequirementsDto(
        soilMoistureLevel: data.dec(_f$soilMoistureLevel),
        lightLevel: data.dec(_f$lightLevel),
        temperatureLevel: data.dec(_f$temperatureLevel),
        humidityLevel: data.dec(_f$humidityLevel));
  }

  @override
  final Function instantiate = _instantiate;

  static CreateRequirementsDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreateRequirementsDto>(map);
  }

  static CreateRequirementsDto fromJson(String json) {
    return ensureInitialized().decodeJson<CreateRequirementsDto>(json);
  }
}

mixin CreateRequirementsDtoMappable {
  String toJson() {
    return CreateRequirementsDtoMapper.ensureInitialized()
        .encodeJson<CreateRequirementsDto>(this as CreateRequirementsDto);
  }

  Map<String, dynamic> toMap() {
    return CreateRequirementsDtoMapper.ensureInitialized()
        .encodeMap<CreateRequirementsDto>(this as CreateRequirementsDto);
  }

  CreateRequirementsDtoCopyWith<CreateRequirementsDto, CreateRequirementsDto,
          CreateRequirementsDto>
      get copyWith => _CreateRequirementsDtoCopyWithImpl(
          this as CreateRequirementsDto, $identity, $identity);
  @override
  String toString() {
    return CreateRequirementsDtoMapper.ensureInitialized()
        .stringifyValue(this as CreateRequirementsDto);
  }

  @override
  bool operator ==(Object other) {
    return CreateRequirementsDtoMapper.ensureInitialized()
        .equalsValue(this as CreateRequirementsDto, other);
  }

  @override
  int get hashCode {
    return CreateRequirementsDtoMapper.ensureInitialized()
        .hashValue(this as CreateRequirementsDto);
  }
}

extension CreateRequirementsDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreateRequirementsDto, $Out> {
  CreateRequirementsDtoCopyWith<$R, CreateRequirementsDto, $Out>
      get $asCreateRequirementsDto =>
          $base.as((v, t, t2) => _CreateRequirementsDtoCopyWithImpl(v, t, t2));
}

abstract class CreateRequirementsDtoCopyWith<
    $R,
    $In extends CreateRequirementsDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? soilMoistureLevel,
      int? lightLevel,
      int? temperatureLevel,
      int? humidityLevel});
  CreateRequirementsDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CreateRequirementsDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreateRequirementsDto, $Out>
    implements CreateRequirementsDtoCopyWith<$R, CreateRequirementsDto, $Out> {
  _CreateRequirementsDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreateRequirementsDto> $mapper =
      CreateRequirementsDtoMapper.ensureInitialized();
  @override
  $R call(
          {int? soilMoistureLevel,
          int? lightLevel,
          int? temperatureLevel,
          int? humidityLevel}) =>
      $apply(FieldCopyWithData({
        if (soilMoistureLevel != null) #soilMoistureLevel: soilMoistureLevel,
        if (lightLevel != null) #lightLevel: lightLevel,
        if (temperatureLevel != null) #temperatureLevel: temperatureLevel,
        if (humidityLevel != null) #humidityLevel: humidityLevel
      }));
  @override
  CreateRequirementsDto $make(CopyWithData data) => CreateRequirementsDto(
      soilMoistureLevel:
          data.get(#soilMoistureLevel, or: $value.soilMoistureLevel),
      lightLevel: data.get(#lightLevel, or: $value.lightLevel),
      temperatureLevel:
          data.get(#temperatureLevel, or: $value.temperatureLevel),
      humidityLevel: data.get(#humidityLevel, or: $value.humidityLevel));

  @override
  CreateRequirementsDtoCopyWith<$R2, CreateRequirementsDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CreateRequirementsDtoCopyWithImpl($value, $cast, t);
}

class UpdatePlantDtoMapper extends ClassMapperBase<UpdatePlantDto> {
  UpdatePlantDtoMapper._();

  static UpdatePlantDtoMapper? _instance;
  static UpdatePlantDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UpdatePlantDtoMapper._());
      UpdateRequirementsDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UpdatePlantDto';

  static String _$plantId(UpdatePlantDto v) => v.plantId;
  static const Field<UpdatePlantDto, String> _f$plantId =
      Field('plantId', _$plantId);
  static String? _$collectionId(UpdatePlantDto v) => v.collectionId;
  static const Field<UpdatePlantDto, String> _f$collectionId =
      Field('collectionId', _$collectionId, opt: true);
  static String? _$deviceId(UpdatePlantDto v) => v.deviceId;
  static const Field<UpdatePlantDto, String> _f$deviceId =
      Field('deviceId', _$deviceId, opt: true);
  static String _$nickname(UpdatePlantDto v) => v.nickname;
  static const Field<UpdatePlantDto, String> _f$nickname =
      Field('nickname', _$nickname);
  static String? _$base64Image(UpdatePlantDto v) => v.base64Image;
  static const Field<UpdatePlantDto, String> _f$base64Image =
      Field('base64Image', _$base64Image);
  static UpdateRequirementsDto _$updateRequirementsDto(UpdatePlantDto v) =>
      v.updateRequirementsDto;
  static const Field<UpdatePlantDto, UpdateRequirementsDto>
      _f$updateRequirementsDto =
      Field('updateRequirementsDto', _$updateRequirementsDto);

  @override
  final MappableFields<UpdatePlantDto> fields = const {
    #plantId: _f$plantId,
    #collectionId: _f$collectionId,
    #deviceId: _f$deviceId,
    #nickname: _f$nickname,
    #base64Image: _f$base64Image,
    #updateRequirementsDto: _f$updateRequirementsDto,
  };

  static UpdatePlantDto _instantiate(DecodingData data) {
    return UpdatePlantDto(
        plantId: data.dec(_f$plantId),
        collectionId: data.dec(_f$collectionId),
        deviceId: data.dec(_f$deviceId),
        nickname: data.dec(_f$nickname),
        base64Image: data.dec(_f$base64Image),
        updateRequirementsDto: data.dec(_f$updateRequirementsDto));
  }

  @override
  final Function instantiate = _instantiate;

  static UpdatePlantDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UpdatePlantDto>(map);
  }

  static UpdatePlantDto fromJson(String json) {
    return ensureInitialized().decodeJson<UpdatePlantDto>(json);
  }
}

mixin UpdatePlantDtoMappable {
  String toJson() {
    return UpdatePlantDtoMapper.ensureInitialized()
        .encodeJson<UpdatePlantDto>(this as UpdatePlantDto);
  }

  Map<String, dynamic> toMap() {
    return UpdatePlantDtoMapper.ensureInitialized()
        .encodeMap<UpdatePlantDto>(this as UpdatePlantDto);
  }

  UpdatePlantDtoCopyWith<UpdatePlantDto, UpdatePlantDto, UpdatePlantDto>
      get copyWith => _UpdatePlantDtoCopyWithImpl(
          this as UpdatePlantDto, $identity, $identity);
  @override
  String toString() {
    return UpdatePlantDtoMapper.ensureInitialized()
        .stringifyValue(this as UpdatePlantDto);
  }

  @override
  bool operator ==(Object other) {
    return UpdatePlantDtoMapper.ensureInitialized()
        .equalsValue(this as UpdatePlantDto, other);
  }

  @override
  int get hashCode {
    return UpdatePlantDtoMapper.ensureInitialized()
        .hashValue(this as UpdatePlantDto);
  }
}

extension UpdatePlantDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UpdatePlantDto, $Out> {
  UpdatePlantDtoCopyWith<$R, UpdatePlantDto, $Out> get $asUpdatePlantDto =>
      $base.as((v, t, t2) => _UpdatePlantDtoCopyWithImpl(v, t, t2));
}

abstract class UpdatePlantDtoCopyWith<$R, $In extends UpdatePlantDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  UpdateRequirementsDtoCopyWith<$R, UpdateRequirementsDto,
      UpdateRequirementsDto> get updateRequirementsDto;
  $R call(
      {String? plantId,
      String? collectionId,
      String? deviceId,
      String? nickname,
      String? base64Image,
      UpdateRequirementsDto? updateRequirementsDto});
  UpdatePlantDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UpdatePlantDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UpdatePlantDto, $Out>
    implements UpdatePlantDtoCopyWith<$R, UpdatePlantDto, $Out> {
  _UpdatePlantDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UpdatePlantDto> $mapper =
      UpdatePlantDtoMapper.ensureInitialized();
  @override
  UpdateRequirementsDtoCopyWith<$R, UpdateRequirementsDto,
          UpdateRequirementsDto>
      get updateRequirementsDto => $value.updateRequirementsDto.copyWith
          .$chain((v) => call(updateRequirementsDto: v));
  @override
  $R call(
          {String? plantId,
          Object? collectionId = $none,
          Object? deviceId = $none,
          String? nickname,
          Object? base64Image = $none,
          UpdateRequirementsDto? updateRequirementsDto}) =>
      $apply(FieldCopyWithData({
        if (plantId != null) #plantId: plantId,
        if (collectionId != $none) #collectionId: collectionId,
        if (deviceId != $none) #deviceId: deviceId,
        if (nickname != null) #nickname: nickname,
        if (base64Image != $none) #base64Image: base64Image,
        if (updateRequirementsDto != null)
          #updateRequirementsDto: updateRequirementsDto
      }));
  @override
  UpdatePlantDto $make(CopyWithData data) => UpdatePlantDto(
      plantId: data.get(#plantId, or: $value.plantId),
      collectionId: data.get(#collectionId, or: $value.collectionId),
      deviceId: data.get(#deviceId, or: $value.deviceId),
      nickname: data.get(#nickname, or: $value.nickname),
      base64Image: data.get(#base64Image, or: $value.base64Image),
      updateRequirementsDto:
          data.get(#updateRequirementsDto, or: $value.updateRequirementsDto));

  @override
  UpdatePlantDtoCopyWith<$R2, UpdatePlantDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UpdatePlantDtoCopyWithImpl($value, $cast, t);
}

class UpdateRequirementsDtoMapper
    extends ClassMapperBase<UpdateRequirementsDto> {
  UpdateRequirementsDtoMapper._();

  static UpdateRequirementsDtoMapper? _instance;
  static UpdateRequirementsDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UpdateRequirementsDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UpdateRequirementsDto';

  static String _$requirementsId(UpdateRequirementsDto v) => v.requirementsId;
  static const Field<UpdateRequirementsDto, String> _f$requirementsId =
      Field('requirementsId', _$requirementsId);
  static int _$soilMoistureLevel(UpdateRequirementsDto v) =>
      v.soilMoistureLevel;
  static const Field<UpdateRequirementsDto, int> _f$soilMoistureLevel =
      Field('soilMoistureLevel', _$soilMoistureLevel);
  static int _$lightLevel(UpdateRequirementsDto v) => v.lightLevel;
  static const Field<UpdateRequirementsDto, int> _f$lightLevel =
      Field('lightLevel', _$lightLevel);
  static int _$temperatureLevel(UpdateRequirementsDto v) => v.temperatureLevel;
  static const Field<UpdateRequirementsDto, int> _f$temperatureLevel =
      Field('temperatureLevel', _$temperatureLevel);
  static int _$humidityLevel(UpdateRequirementsDto v) => v.humidityLevel;
  static const Field<UpdateRequirementsDto, int> _f$humidityLevel =
      Field('humidityLevel', _$humidityLevel);

  @override
  final MappableFields<UpdateRequirementsDto> fields = const {
    #requirementsId: _f$requirementsId,
    #soilMoistureLevel: _f$soilMoistureLevel,
    #lightLevel: _f$lightLevel,
    #temperatureLevel: _f$temperatureLevel,
    #humidityLevel: _f$humidityLevel,
  };

  static UpdateRequirementsDto _instantiate(DecodingData data) {
    return UpdateRequirementsDto(
        requirementsId: data.dec(_f$requirementsId),
        soilMoistureLevel: data.dec(_f$soilMoistureLevel),
        lightLevel: data.dec(_f$lightLevel),
        temperatureLevel: data.dec(_f$temperatureLevel),
        humidityLevel: data.dec(_f$humidityLevel));
  }

  @override
  final Function instantiate = _instantiate;

  static UpdateRequirementsDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UpdateRequirementsDto>(map);
  }

  static UpdateRequirementsDto fromJson(String json) {
    return ensureInitialized().decodeJson<UpdateRequirementsDto>(json);
  }
}

mixin UpdateRequirementsDtoMappable {
  String toJson() {
    return UpdateRequirementsDtoMapper.ensureInitialized()
        .encodeJson<UpdateRequirementsDto>(this as UpdateRequirementsDto);
  }

  Map<String, dynamic> toMap() {
    return UpdateRequirementsDtoMapper.ensureInitialized()
        .encodeMap<UpdateRequirementsDto>(this as UpdateRequirementsDto);
  }

  UpdateRequirementsDtoCopyWith<UpdateRequirementsDto, UpdateRequirementsDto,
          UpdateRequirementsDto>
      get copyWith => _UpdateRequirementsDtoCopyWithImpl(
          this as UpdateRequirementsDto, $identity, $identity);
  @override
  String toString() {
    return UpdateRequirementsDtoMapper.ensureInitialized()
        .stringifyValue(this as UpdateRequirementsDto);
  }

  @override
  bool operator ==(Object other) {
    return UpdateRequirementsDtoMapper.ensureInitialized()
        .equalsValue(this as UpdateRequirementsDto, other);
  }

  @override
  int get hashCode {
    return UpdateRequirementsDtoMapper.ensureInitialized()
        .hashValue(this as UpdateRequirementsDto);
  }
}

extension UpdateRequirementsDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UpdateRequirementsDto, $Out> {
  UpdateRequirementsDtoCopyWith<$R, UpdateRequirementsDto, $Out>
      get $asUpdateRequirementsDto =>
          $base.as((v, t, t2) => _UpdateRequirementsDtoCopyWithImpl(v, t, t2));
}

abstract class UpdateRequirementsDtoCopyWith<
    $R,
    $In extends UpdateRequirementsDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? requirementsId,
      int? soilMoistureLevel,
      int? lightLevel,
      int? temperatureLevel,
      int? humidityLevel});
  UpdateRequirementsDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UpdateRequirementsDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UpdateRequirementsDto, $Out>
    implements UpdateRequirementsDtoCopyWith<$R, UpdateRequirementsDto, $Out> {
  _UpdateRequirementsDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UpdateRequirementsDto> $mapper =
      UpdateRequirementsDtoMapper.ensureInitialized();
  @override
  $R call(
          {String? requirementsId,
          int? soilMoistureLevel,
          int? lightLevel,
          int? temperatureLevel,
          int? humidityLevel}) =>
      $apply(FieldCopyWithData({
        if (requirementsId != null) #requirementsId: requirementsId,
        if (soilMoistureLevel != null) #soilMoistureLevel: soilMoistureLevel,
        if (lightLevel != null) #lightLevel: lightLevel,
        if (temperatureLevel != null) #temperatureLevel: temperatureLevel,
        if (humidityLevel != null) #humidityLevel: humidityLevel
      }));
  @override
  UpdateRequirementsDto $make(CopyWithData data) => UpdateRequirementsDto(
      requirementsId: data.get(#requirementsId, or: $value.requirementsId),
      soilMoistureLevel:
          data.get(#soilMoistureLevel, or: $value.soilMoistureLevel),
      lightLevel: data.get(#lightLevel, or: $value.lightLevel),
      temperatureLevel:
          data.get(#temperatureLevel, or: $value.temperatureLevel),
      humidityLevel: data.get(#humidityLevel, or: $value.humidityLevel));

  @override
  UpdateRequirementsDtoCopyWith<$R2, UpdateRequirementsDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _UpdateRequirementsDtoCopyWithImpl($value, $cast, t);
}

class GetCriticalPlantDtoMapper extends ClassMapperBase<GetCriticalPlantDto> {
  GetCriticalPlantDtoMapper._();

  static GetCriticalPlantDtoMapper? _instance;
  static GetCriticalPlantDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GetCriticalPlantDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GetCriticalPlantDto';

  static String _$plantId(GetCriticalPlantDto v) => v.plantId;
  static const Field<GetCriticalPlantDto, String> _f$plantId =
      Field('plantId', _$plantId);
  static String _$imageUrl(GetCriticalPlantDto v) => v.imageUrl;
  static const Field<GetCriticalPlantDto, String> _f$imageUrl =
      Field('imageUrl', _$imageUrl);
  static String _$nickname(GetCriticalPlantDto v) => v.nickname;
  static const Field<GetCriticalPlantDto, String> _f$nickname =
      Field('nickname', _$nickname);
  static int _$mood(GetCriticalPlantDto v) => v.mood;
  static const Field<GetCriticalPlantDto, int> _f$mood = Field('mood', _$mood);
  static String _$suggestedAction(GetCriticalPlantDto v) => v.suggestedAction;
  static const Field<GetCriticalPlantDto, String> _f$suggestedAction =
      Field('suggestedAction', _$suggestedAction);

  @override
  final MappableFields<GetCriticalPlantDto> fields = const {
    #plantId: _f$plantId,
    #imageUrl: _f$imageUrl,
    #nickname: _f$nickname,
    #mood: _f$mood,
    #suggestedAction: _f$suggestedAction,
  };

  static GetCriticalPlantDto _instantiate(DecodingData data) {
    return GetCriticalPlantDto(
        plantId: data.dec(_f$plantId),
        imageUrl: data.dec(_f$imageUrl),
        nickname: data.dec(_f$nickname),
        mood: data.dec(_f$mood),
        suggestedAction: data.dec(_f$suggestedAction));
  }

  @override
  final Function instantiate = _instantiate;

  static GetCriticalPlantDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GetCriticalPlantDto>(map);
  }

  static GetCriticalPlantDto fromJson(String json) {
    return ensureInitialized().decodeJson<GetCriticalPlantDto>(json);
  }
}

mixin GetCriticalPlantDtoMappable {
  String toJson() {
    return GetCriticalPlantDtoMapper.ensureInitialized()
        .encodeJson<GetCriticalPlantDto>(this as GetCriticalPlantDto);
  }

  Map<String, dynamic> toMap() {
    return GetCriticalPlantDtoMapper.ensureInitialized()
        .encodeMap<GetCriticalPlantDto>(this as GetCriticalPlantDto);
  }

  GetCriticalPlantDtoCopyWith<GetCriticalPlantDto, GetCriticalPlantDto,
          GetCriticalPlantDto>
      get copyWith => _GetCriticalPlantDtoCopyWithImpl(
          this as GetCriticalPlantDto, $identity, $identity);
  @override
  String toString() {
    return GetCriticalPlantDtoMapper.ensureInitialized()
        .stringifyValue(this as GetCriticalPlantDto);
  }

  @override
  bool operator ==(Object other) {
    return GetCriticalPlantDtoMapper.ensureInitialized()
        .equalsValue(this as GetCriticalPlantDto, other);
  }

  @override
  int get hashCode {
    return GetCriticalPlantDtoMapper.ensureInitialized()
        .hashValue(this as GetCriticalPlantDto);
  }
}

extension GetCriticalPlantDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetCriticalPlantDto, $Out> {
  GetCriticalPlantDtoCopyWith<$R, GetCriticalPlantDto, $Out>
      get $asGetCriticalPlantDto =>
          $base.as((v, t, t2) => _GetCriticalPlantDtoCopyWithImpl(v, t, t2));
}

abstract class GetCriticalPlantDtoCopyWith<$R, $In extends GetCriticalPlantDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? plantId,
      String? imageUrl,
      String? nickname,
      int? mood,
      String? suggestedAction});
  GetCriticalPlantDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GetCriticalPlantDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetCriticalPlantDto, $Out>
    implements GetCriticalPlantDtoCopyWith<$R, GetCriticalPlantDto, $Out> {
  _GetCriticalPlantDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GetCriticalPlantDto> $mapper =
      GetCriticalPlantDtoMapper.ensureInitialized();
  @override
  $R call(
          {String? plantId,
          String? imageUrl,
          String? nickname,
          int? mood,
          String? suggestedAction}) =>
      $apply(FieldCopyWithData({
        if (plantId != null) #plantId: plantId,
        if (imageUrl != null) #imageUrl: imageUrl,
        if (nickname != null) #nickname: nickname,
        if (mood != null) #mood: mood,
        if (suggestedAction != null) #suggestedAction: suggestedAction
      }));
  @override
  GetCriticalPlantDto $make(CopyWithData data) => GetCriticalPlantDto(
      plantId: data.get(#plantId, or: $value.plantId),
      imageUrl: data.get(#imageUrl, or: $value.imageUrl),
      nickname: data.get(#nickname, or: $value.nickname),
      mood: data.get(#mood, or: $value.mood),
      suggestedAction: data.get(#suggestedAction, or: $value.suggestedAction));

  @override
  GetCriticalPlantDtoCopyWith<$R2, GetCriticalPlantDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _GetCriticalPlantDtoCopyWithImpl($value, $cast, t);
}
