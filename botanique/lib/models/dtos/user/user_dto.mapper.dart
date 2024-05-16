// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_dto.dart';

class UserDtoMapper extends ClassMapperBase<UserDto> {
  UserDtoMapper._();

  static UserDtoMapper? _instance;
  static UserDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UserDto';

  static String? _$username(UserDto v) => v.username;
  static const Field<UserDto, String> _f$username =
      Field('username', _$username, opt: true);
  static String? _$password(UserDto v) => v.password;
  static const Field<UserDto, String> _f$password =
      Field('password', _$password, opt: true);
  static String? _$base64Image(UserDto v) => v.base64Image;
  static const Field<UserDto, String> _f$base64Image =
      Field('base64Image', _$base64Image, opt: true);
  static String? _$userEmail(UserDto v) => v.userEmail;
  static const Field<UserDto, String> _f$userEmail =
      Field('userEmail', _$userEmail, opt: true);

  @override
  final MappableFields<UserDto> fields = const {
    #username: _f$username,
    #password: _f$password,
    #base64Image: _f$base64Image,
    #userEmail: _f$userEmail,
  };

  static UserDto _instantiate(DecodingData data) {
    return UserDto(
        username: data.dec(_f$username),
        password: data.dec(_f$password),
        base64Image: data.dec(_f$base64Image),
        userEmail: data.dec(_f$userEmail));
  }

  @override
  final Function instantiate = _instantiate;

  static UserDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserDto>(map);
  }

  static UserDto fromJson(String json) {
    return ensureInitialized().decodeJson<UserDto>(json);
  }
}

mixin UserDtoMappable {
  String toJson() {
    return UserDtoMapper.ensureInitialized()
        .encodeJson<UserDto>(this as UserDto);
  }

  Map<String, dynamic> toMap() {
    return UserDtoMapper.ensureInitialized()
        .encodeMap<UserDto>(this as UserDto);
  }

  UserDtoCopyWith<UserDto, UserDto, UserDto> get copyWith =>
      _UserDtoCopyWithImpl(this as UserDto, $identity, $identity);
  @override
  String toString() {
    return UserDtoMapper.ensureInitialized().stringifyValue(this as UserDto);
  }

  @override
  bool operator ==(Object other) {
    return UserDtoMapper.ensureInitialized()
        .equalsValue(this as UserDto, other);
  }

  @override
  int get hashCode {
    return UserDtoMapper.ensureInitialized().hashValue(this as UserDto);
  }
}

extension UserDtoValueCopy<$R, $Out> on ObjectCopyWith<$R, UserDto, $Out> {
  UserDtoCopyWith<$R, UserDto, $Out> get $asUserDto =>
      $base.as((v, t, t2) => _UserDtoCopyWithImpl(v, t, t2));
}

abstract class UserDtoCopyWith<$R, $In extends UserDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? username,
      String? password,
      String? base64Image,
      String? userEmail});
  UserDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserDto, $Out>
    implements UserDtoCopyWith<$R, UserDto, $Out> {
  _UserDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserDto> $mapper =
      UserDtoMapper.ensureInitialized();
  @override
  $R call(
          {Object? username = $none,
          Object? password = $none,
          Object? base64Image = $none,
          Object? userEmail = $none}) =>
      $apply(FieldCopyWithData({
        if (username != $none) #username: username,
        if (password != $none) #password: password,
        if (base64Image != $none) #base64Image: base64Image,
        if (userEmail != $none) #userEmail: userEmail
      }));
  @override
  UserDto $make(CopyWithData data) => UserDto(
      username: data.get(#username, or: $value.username),
      password: data.get(#password, or: $value.password),
      base64Image: data.get(#base64Image, or: $value.base64Image),
      userEmail: data.get(#userEmail, or: $value.userEmail));

  @override
  UserDtoCopyWith<$R2, UserDto, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _UserDtoCopyWithImpl($value, $cast, t);
}

class GetUserDtoMapper extends ClassMapperBase<GetUserDto> {
  GetUserDtoMapper._();

  static GetUserDtoMapper? _instance;
  static GetUserDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GetUserDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'GetUserDto';

  static String _$userEmail(GetUserDto v) => v.userEmail;
  static const Field<GetUserDto, String> _f$userEmail =
      Field('userEmail', _$userEmail);
  static String _$username(GetUserDto v) => v.username;
  static const Field<GetUserDto, String> _f$username =
      Field('username', _$username);
  static String? _$blobUrl(GetUserDto v) => v.blobUrl;
  static const Field<GetUserDto, String> _f$blobUrl =
      Field('blobUrl', _$blobUrl, opt: true);

  @override
  final MappableFields<GetUserDto> fields = const {
    #userEmail: _f$userEmail,
    #username: _f$username,
    #blobUrl: _f$blobUrl,
  };

  static GetUserDto _instantiate(DecodingData data) {
    return GetUserDto(
        userEmail: data.dec(_f$userEmail),
        username: data.dec(_f$username),
        blobUrl: data.dec(_f$blobUrl));
  }

  @override
  final Function instantiate = _instantiate;

  static GetUserDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GetUserDto>(map);
  }

  static GetUserDto fromJson(String json) {
    return ensureInitialized().decodeJson<GetUserDto>(json);
  }
}

mixin GetUserDtoMappable {
  String toJson() {
    return GetUserDtoMapper.ensureInitialized()
        .encodeJson<GetUserDto>(this as GetUserDto);
  }

  Map<String, dynamic> toMap() {
    return GetUserDtoMapper.ensureInitialized()
        .encodeMap<GetUserDto>(this as GetUserDto);
  }

  GetUserDtoCopyWith<GetUserDto, GetUserDto, GetUserDto> get copyWith =>
      _GetUserDtoCopyWithImpl(this as GetUserDto, $identity, $identity);
  @override
  String toString() {
    return GetUserDtoMapper.ensureInitialized()
        .stringifyValue(this as GetUserDto);
  }

  @override
  bool operator ==(Object other) {
    return GetUserDtoMapper.ensureInitialized()
        .equalsValue(this as GetUserDto, other);
  }

  @override
  int get hashCode {
    return GetUserDtoMapper.ensureInitialized().hashValue(this as GetUserDto);
  }
}

extension GetUserDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetUserDto, $Out> {
  GetUserDtoCopyWith<$R, GetUserDto, $Out> get $asGetUserDto =>
      $base.as((v, t, t2) => _GetUserDtoCopyWithImpl(v, t, t2));
}

abstract class GetUserDtoCopyWith<$R, $In extends GetUserDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? userEmail, String? username, String? blobUrl});
  GetUserDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GetUserDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetUserDto, $Out>
    implements GetUserDtoCopyWith<$R, GetUserDto, $Out> {
  _GetUserDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GetUserDto> $mapper =
      GetUserDtoMapper.ensureInitialized();
  @override
  $R call({String? userEmail, String? username, Object? blobUrl = $none}) =>
      $apply(FieldCopyWithData({
        if (userEmail != null) #userEmail: userEmail,
        if (username != null) #username: username,
        if (blobUrl != $none) #blobUrl: blobUrl
      }));
  @override
  GetUserDto $make(CopyWithData data) => GetUserDto(
      userEmail: data.get(#userEmail, or: $value.userEmail),
      username: data.get(#username, or: $value.username),
      blobUrl: data.get(#blobUrl, or: $value.blobUrl));

  @override
  GetUserDtoCopyWith<$R2, GetUserDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GetUserDtoCopyWithImpl($value, $cast, t);
}
