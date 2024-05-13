// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'collections.dart';

class CollectionMapper extends ClassMapperBase<Collection> {
  CollectionMapper._();

  static CollectionMapper? _instance;
  static CollectionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CollectionMapper._());
      PlantMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Collection';

  static String _$collectionId(Collection v) => v.collectionId;
  static const Field<Collection, String> _f$collectionId =
      Field('collectionId', _$collectionId);
  static String _$name(Collection v) => v.name;
  static const Field<Collection, String> _f$name = Field('name', _$name);
  static String _$userEmail(Collection v) => v.userEmail;
  static const Field<Collection, String> _f$userEmail =
      Field('userEmail', _$userEmail);
  static List<Plant> _$plants(Collection v) => v.plants;
  static const Field<Collection, List<Plant>> _f$plants =
      Field('plants', _$plants);

  @override
  final MappableFields<Collection> fields = const {
    #collectionId: _f$collectionId,
    #name: _f$name,
    #userEmail: _f$userEmail,
    #plants: _f$plants,
  };

  static Collection _instantiate(DecodingData data) {
    return Collection(
        collectionId: data.dec(_f$collectionId),
        name: data.dec(_f$name),
        userEmail: data.dec(_f$userEmail),
        plants: data.dec(_f$plants));
  }

  @override
  final Function instantiate = _instantiate;

  static Collection fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Collection>(map);
  }

  static Collection fromJson(String json) {
    return ensureInitialized().decodeJson<Collection>(json);
  }
}

mixin CollectionMappable {
  String toJson() {
    return CollectionMapper.ensureInitialized()
        .encodeJson<Collection>(this as Collection);
  }

  Map<String, dynamic> toMap() {
    return CollectionMapper.ensureInitialized()
        .encodeMap<Collection>(this as Collection);
  }

  CollectionCopyWith<Collection, Collection, Collection> get copyWith =>
      _CollectionCopyWithImpl(this as Collection, $identity, $identity);
  @override
  String toString() {
    return CollectionMapper.ensureInitialized()
        .stringifyValue(this as Collection);
  }

  @override
  bool operator ==(Object other) {
    return CollectionMapper.ensureInitialized()
        .equalsValue(this as Collection, other);
  }

  @override
  int get hashCode {
    return CollectionMapper.ensureInitialized().hashValue(this as Collection);
  }
}

extension CollectionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Collection, $Out> {
  CollectionCopyWith<$R, Collection, $Out> get $asCollection =>
      $base.as((v, t, t2) => _CollectionCopyWithImpl(v, t, t2));
}

abstract class CollectionCopyWith<$R, $In extends Collection, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Plant, PlantCopyWith<$R, Plant, Plant>> get plants;
  $R call(
      {String? collectionId,
      String? name,
      String? userEmail,
      List<Plant>? plants});
  CollectionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CollectionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Collection, $Out>
    implements CollectionCopyWith<$R, Collection, $Out> {
  _CollectionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Collection> $mapper =
      CollectionMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Plant, PlantCopyWith<$R, Plant, Plant>> get plants =>
      ListCopyWith($value.plants, (v, t) => v.copyWith.$chain(t),
          (v) => call(plants: v));
  @override
  $R call(
          {String? collectionId,
          String? name,
          String? userEmail,
          List<Plant>? plants}) =>
      $apply(FieldCopyWithData({
        if (collectionId != null) #collectionId: collectionId,
        if (name != null) #name: name,
        if (userEmail != null) #userEmail: userEmail,
        if (plants != null) #plants: plants
      }));
  @override
  Collection $make(CopyWithData data) => Collection(
      collectionId: data.get(#collectionId, or: $value.collectionId),
      name: data.get(#name, or: $value.name),
      userEmail: data.get(#userEmail, or: $value.userEmail),
      plants: data.get(#plants, or: $value.plants));

  @override
  CollectionCopyWith<$R2, Collection, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CollectionCopyWithImpl($value, $cast, t);
}

class CreateCollectionDtoMapper extends ClassMapperBase<CreateCollectionDto> {
  CreateCollectionDtoMapper._();

  static CreateCollectionDtoMapper? _instance;
  static CreateCollectionDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreateCollectionDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CreateCollectionDto';

  static String _$name(CreateCollectionDto v) => v.name;
  static const Field<CreateCollectionDto, String> _f$name =
      Field('name', _$name);

  @override
  final MappableFields<CreateCollectionDto> fields = const {
    #name: _f$name,
  };

  static CreateCollectionDto _instantiate(DecodingData data) {
    return CreateCollectionDto(name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static CreateCollectionDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreateCollectionDto>(map);
  }

  static CreateCollectionDto fromJson(String json) {
    return ensureInitialized().decodeJson<CreateCollectionDto>(json);
  }
}

mixin CreateCollectionDtoMappable {
  String toJson() {
    return CreateCollectionDtoMapper.ensureInitialized()
        .encodeJson<CreateCollectionDto>(this as CreateCollectionDto);
  }

  Map<String, dynamic> toMap() {
    return CreateCollectionDtoMapper.ensureInitialized()
        .encodeMap<CreateCollectionDto>(this as CreateCollectionDto);
  }

  CreateCollectionDtoCopyWith<CreateCollectionDto, CreateCollectionDto,
          CreateCollectionDto>
      get copyWith => _CreateCollectionDtoCopyWithImpl(
          this as CreateCollectionDto, $identity, $identity);
  @override
  String toString() {
    return CreateCollectionDtoMapper.ensureInitialized()
        .stringifyValue(this as CreateCollectionDto);
  }

  @override
  bool operator ==(Object other) {
    return CreateCollectionDtoMapper.ensureInitialized()
        .equalsValue(this as CreateCollectionDto, other);
  }

  @override
  int get hashCode {
    return CreateCollectionDtoMapper.ensureInitialized()
        .hashValue(this as CreateCollectionDto);
  }
}

extension CreateCollectionDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreateCollectionDto, $Out> {
  CreateCollectionDtoCopyWith<$R, CreateCollectionDto, $Out>
      get $asCreateCollectionDto =>
          $base.as((v, t, t2) => _CreateCollectionDtoCopyWithImpl(v, t, t2));
}

abstract class CreateCollectionDtoCopyWith<$R, $In extends CreateCollectionDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name});
  CreateCollectionDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CreateCollectionDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreateCollectionDto, $Out>
    implements CreateCollectionDtoCopyWith<$R, CreateCollectionDto, $Out> {
  _CreateCollectionDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreateCollectionDto> $mapper =
      CreateCollectionDtoMapper.ensureInitialized();
  @override
  $R call({String? name}) =>
      $apply(FieldCopyWithData({if (name != null) #name: name}));
  @override
  CreateCollectionDto $make(CopyWithData data) =>
      CreateCollectionDto(name: data.get(#name, or: $value.name));

  @override
  CreateCollectionDtoCopyWith<$R2, CreateCollectionDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CreateCollectionDtoCopyWithImpl($value, $cast, t);
}

class UpdateCollectionDtoMapper extends ClassMapperBase<UpdateCollectionDto> {
  UpdateCollectionDtoMapper._();

  static UpdateCollectionDtoMapper? _instance;
  static UpdateCollectionDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UpdateCollectionDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UpdateCollectionDto';

  static String _$collectionId(UpdateCollectionDto v) => v.collectionId;
  static const Field<UpdateCollectionDto, String> _f$collectionId =
      Field('collectionId', _$collectionId);
  static String _$name(UpdateCollectionDto v) => v.name;
  static const Field<UpdateCollectionDto, String> _f$name =
      Field('name', _$name);

  @override
  final MappableFields<UpdateCollectionDto> fields = const {
    #collectionId: _f$collectionId,
    #name: _f$name,
  };

  static UpdateCollectionDto _instantiate(DecodingData data) {
    return UpdateCollectionDto(
        collectionId: data.dec(_f$collectionId), name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static UpdateCollectionDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UpdateCollectionDto>(map);
  }

  static UpdateCollectionDto fromJson(String json) {
    return ensureInitialized().decodeJson<UpdateCollectionDto>(json);
  }
}

mixin UpdateCollectionDtoMappable {
  String toJson() {
    return UpdateCollectionDtoMapper.ensureInitialized()
        .encodeJson<UpdateCollectionDto>(this as UpdateCollectionDto);
  }

  Map<String, dynamic> toMap() {
    return UpdateCollectionDtoMapper.ensureInitialized()
        .encodeMap<UpdateCollectionDto>(this as UpdateCollectionDto);
  }

  UpdateCollectionDtoCopyWith<UpdateCollectionDto, UpdateCollectionDto,
          UpdateCollectionDto>
      get copyWith => _UpdateCollectionDtoCopyWithImpl(
          this as UpdateCollectionDto, $identity, $identity);
  @override
  String toString() {
    return UpdateCollectionDtoMapper.ensureInitialized()
        .stringifyValue(this as UpdateCollectionDto);
  }

  @override
  bool operator ==(Object other) {
    return UpdateCollectionDtoMapper.ensureInitialized()
        .equalsValue(this as UpdateCollectionDto, other);
  }

  @override
  int get hashCode {
    return UpdateCollectionDtoMapper.ensureInitialized()
        .hashValue(this as UpdateCollectionDto);
  }
}

extension UpdateCollectionDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UpdateCollectionDto, $Out> {
  UpdateCollectionDtoCopyWith<$R, UpdateCollectionDto, $Out>
      get $asUpdateCollectionDto =>
          $base.as((v, t, t2) => _UpdateCollectionDtoCopyWithImpl(v, t, t2));
}

abstract class UpdateCollectionDtoCopyWith<$R, $In extends UpdateCollectionDto,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? collectionId, String? name});
  UpdateCollectionDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UpdateCollectionDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UpdateCollectionDto, $Out>
    implements UpdateCollectionDtoCopyWith<$R, UpdateCollectionDto, $Out> {
  _UpdateCollectionDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UpdateCollectionDto> $mapper =
      UpdateCollectionDtoMapper.ensureInitialized();
  @override
  $R call({String? collectionId, String? name}) => $apply(FieldCopyWithData({
        if (collectionId != null) #collectionId: collectionId,
        if (name != null) #name: name
      }));
  @override
  UpdateCollectionDto $make(CopyWithData data) => UpdateCollectionDto(
      collectionId: data.get(#collectionId, or: $value.collectionId),
      name: data.get(#name, or: $value.name));

  @override
  UpdateCollectionDtoCopyWith<$R2, UpdateCollectionDto, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _UpdateCollectionDtoCopyWithImpl($value, $cast, t);
}

class GetCollectionDtoMapper extends ClassMapperBase<GetCollectionDto> {
  GetCollectionDtoMapper._();

  static GetCollectionDtoMapper? _instance;
  static GetCollectionDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GetCollectionDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GetCollectionDto';

  static String _$collectionId(GetCollectionDto v) => v.collectionId;
  static const Field<GetCollectionDto, String> _f$collectionId =
      Field('collectionId', _$collectionId);
  static String _$name(GetCollectionDto v) => v.name;
  static const Field<GetCollectionDto, String> _f$name = Field('name', _$name);

  @override
  final MappableFields<GetCollectionDto> fields = const {
    #collectionId: _f$collectionId,
    #name: _f$name,
  };

  static GetCollectionDto _instantiate(DecodingData data) {
    return GetCollectionDto(
        collectionId: data.dec(_f$collectionId), name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static GetCollectionDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GetCollectionDto>(map);
  }

  static GetCollectionDto fromJson(String json) {
    return ensureInitialized().decodeJson<GetCollectionDto>(json);
  }
}

mixin GetCollectionDtoMappable {
  String toJson() {
    return GetCollectionDtoMapper.ensureInitialized()
        .encodeJson<GetCollectionDto>(this as GetCollectionDto);
  }

  Map<String, dynamic> toMap() {
    return GetCollectionDtoMapper.ensureInitialized()
        .encodeMap<GetCollectionDto>(this as GetCollectionDto);
  }

  GetCollectionDtoCopyWith<GetCollectionDto, GetCollectionDto, GetCollectionDto>
      get copyWith => _GetCollectionDtoCopyWithImpl(
          this as GetCollectionDto, $identity, $identity);
  @override
  String toString() {
    return GetCollectionDtoMapper.ensureInitialized()
        .stringifyValue(this as GetCollectionDto);
  }

  @override
  bool operator ==(Object other) {
    return GetCollectionDtoMapper.ensureInitialized()
        .equalsValue(this as GetCollectionDto, other);
  }

  @override
  int get hashCode {
    return GetCollectionDtoMapper.ensureInitialized()
        .hashValue(this as GetCollectionDto);
  }
}

extension GetCollectionDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetCollectionDto, $Out> {
  GetCollectionDtoCopyWith<$R, GetCollectionDto, $Out>
      get $asGetCollectionDto =>
          $base.as((v, t, t2) => _GetCollectionDtoCopyWithImpl(v, t, t2));
}

abstract class GetCollectionDtoCopyWith<$R, $In extends GetCollectionDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? collectionId, String? name});
  GetCollectionDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _GetCollectionDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetCollectionDto, $Out>
    implements GetCollectionDtoCopyWith<$R, GetCollectionDto, $Out> {
  _GetCollectionDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GetCollectionDto> $mapper =
      GetCollectionDtoMapper.ensureInitialized();
  @override
  $R call({String? collectionId, String? name}) => $apply(FieldCopyWithData({
        if (collectionId != null) #collectionId: collectionId,
        if (name != null) #name: name
      }));
  @override
  GetCollectionDto $make(CopyWithData data) => GetCollectionDto(
      collectionId: data.get(#collectionId, or: $value.collectionId),
      name: data.get(#name, or: $value.name));

  @override
  GetCollectionDtoCopyWith<$R2, GetCollectionDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GetCollectionDtoCopyWithImpl($value, $cast, t);
}
