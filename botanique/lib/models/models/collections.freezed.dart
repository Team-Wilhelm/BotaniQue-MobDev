// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collections.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Collection _$CollectionFromJson(Map<String, dynamic> json) {
  return _Collection.fromJson(json);
}

/// @nodoc
mixin _$Collection {
  String get collectionId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get userEmail => throw _privateConstructorUsedError;
  List<Plant> get plants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionCopyWith<Collection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionCopyWith<$Res> {
  factory $CollectionCopyWith(
          Collection value, $Res Function(Collection) then) =
      _$CollectionCopyWithImpl<$Res, Collection>;
  @useResult
  $Res call(
      {String collectionId, String name, String userEmail, List<Plant> plants});
}

/// @nodoc
class _$CollectionCopyWithImpl<$Res, $Val extends Collection>
    implements $CollectionCopyWith<$Res> {
  _$CollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionId = null,
    Object? name = null,
    Object? userEmail = null,
    Object? plants = null,
  }) {
    return _then(_value.copyWith(
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      plants: null == plants
          ? _value.plants
          : plants // ignore: cast_nullable_to_non_nullable
              as List<Plant>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectionImplCopyWith<$Res>
    implements $CollectionCopyWith<$Res> {
  factory _$$CollectionImplCopyWith(
          _$CollectionImpl value, $Res Function(_$CollectionImpl) then) =
      __$$CollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String collectionId, String name, String userEmail, List<Plant> plants});
}

/// @nodoc
class __$$CollectionImplCopyWithImpl<$Res>
    extends _$CollectionCopyWithImpl<$Res, _$CollectionImpl>
    implements _$$CollectionImplCopyWith<$Res> {
  __$$CollectionImplCopyWithImpl(
      _$CollectionImpl _value, $Res Function(_$CollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionId = null,
    Object? name = null,
    Object? userEmail = null,
    Object? plants = null,
  }) {
    return _then(_$CollectionImpl(
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      plants: null == plants
          ? _value._plants
          : plants // ignore: cast_nullable_to_non_nullable
              as List<Plant>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionImpl implements _Collection {
  const _$CollectionImpl(
      {required this.collectionId,
      required this.name,
      required this.userEmail,
      required final List<Plant> plants})
      : _plants = plants;

  factory _$CollectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionImplFromJson(json);

  @override
  final String collectionId;
  @override
  final String name;
  @override
  final String userEmail;
  final List<Plant> _plants;
  @override
  List<Plant> get plants {
    if (_plants is EqualUnmodifiableListView) return _plants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_plants);
  }

  @override
  String toString() {
    return 'Collection(collectionId: $collectionId, name: $name, userEmail: $userEmail, plants: $plants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionImpl &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            const DeepCollectionEquality().equals(other._plants, _plants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, collectionId, name, userEmail,
      const DeepCollectionEquality().hash(_plants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionImplCopyWith<_$CollectionImpl> get copyWith =>
      __$$CollectionImplCopyWithImpl<_$CollectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionImplToJson(
      this,
    );
  }
}

abstract class _Collection implements Collection {
  const factory _Collection(
      {required final String collectionId,
      required final String name,
      required final String userEmail,
      required final List<Plant> plants}) = _$CollectionImpl;

  factory _Collection.fromJson(Map<String, dynamic> json) =
      _$CollectionImpl.fromJson;

  @override
  String get collectionId;
  @override
  String get name;
  @override
  String get userEmail;
  @override
  List<Plant> get plants;
  @override
  @JsonKey(ignore: true)
  _$$CollectionImplCopyWith<_$CollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateCollectionDto _$CreateCollectionDtoFromJson(Map<String, dynamic> json) {
  return _CreateCollectionDto.fromJson(json);
}

/// @nodoc
mixin _$CreateCollectionDto {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCollectionDtoCopyWith<CreateCollectionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCollectionDtoCopyWith<$Res> {
  factory $CreateCollectionDtoCopyWith(
          CreateCollectionDto value, $Res Function(CreateCollectionDto) then) =
      _$CreateCollectionDtoCopyWithImpl<$Res, CreateCollectionDto>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CreateCollectionDtoCopyWithImpl<$Res, $Val extends CreateCollectionDto>
    implements $CreateCollectionDtoCopyWith<$Res> {
  _$CreateCollectionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateCollectionDtoImplCopyWith<$Res>
    implements $CreateCollectionDtoCopyWith<$Res> {
  factory _$$CreateCollectionDtoImplCopyWith(_$CreateCollectionDtoImpl value,
          $Res Function(_$CreateCollectionDtoImpl) then) =
      __$$CreateCollectionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$CreateCollectionDtoImplCopyWithImpl<$Res>
    extends _$CreateCollectionDtoCopyWithImpl<$Res, _$CreateCollectionDtoImpl>
    implements _$$CreateCollectionDtoImplCopyWith<$Res> {
  __$$CreateCollectionDtoImplCopyWithImpl(_$CreateCollectionDtoImpl _value,
      $Res Function(_$CreateCollectionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$CreateCollectionDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCollectionDtoImpl implements _CreateCollectionDto {
  _$CreateCollectionDtoImpl({required this.name});

  factory _$CreateCollectionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateCollectionDtoImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'CreateCollectionDto(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCollectionDtoImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCollectionDtoImplCopyWith<_$CreateCollectionDtoImpl> get copyWith =>
      __$$CreateCollectionDtoImplCopyWithImpl<_$CreateCollectionDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCollectionDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateCollectionDto implements CreateCollectionDto {
  factory _CreateCollectionDto({required final String name}) =
      _$CreateCollectionDtoImpl;

  factory _CreateCollectionDto.fromJson(Map<String, dynamic> json) =
      _$CreateCollectionDtoImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CreateCollectionDtoImplCopyWith<_$CreateCollectionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateCollectionDto _$UpdateCollectionDtoFromJson(Map<String, dynamic> json) {
  return _UpdateCollectionDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateCollectionDto {
  String get collectionId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCollectionDtoCopyWith<UpdateCollectionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCollectionDtoCopyWith<$Res> {
  factory $UpdateCollectionDtoCopyWith(
          UpdateCollectionDto value, $Res Function(UpdateCollectionDto) then) =
      _$UpdateCollectionDtoCopyWithImpl<$Res, UpdateCollectionDto>;
  @useResult
  $Res call({String collectionId, String name});
}

/// @nodoc
class _$UpdateCollectionDtoCopyWithImpl<$Res, $Val extends UpdateCollectionDto>
    implements $UpdateCollectionDtoCopyWith<$Res> {
  _$UpdateCollectionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionId = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateCollectionDtoImplCopyWith<$Res>
    implements $UpdateCollectionDtoCopyWith<$Res> {
  factory _$$UpdateCollectionDtoImplCopyWith(_$UpdateCollectionDtoImpl value,
          $Res Function(_$UpdateCollectionDtoImpl) then) =
      __$$UpdateCollectionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String collectionId, String name});
}

/// @nodoc
class __$$UpdateCollectionDtoImplCopyWithImpl<$Res>
    extends _$UpdateCollectionDtoCopyWithImpl<$Res, _$UpdateCollectionDtoImpl>
    implements _$$UpdateCollectionDtoImplCopyWith<$Res> {
  __$$UpdateCollectionDtoImplCopyWithImpl(_$UpdateCollectionDtoImpl _value,
      $Res Function(_$UpdateCollectionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionId = null,
    Object? name = null,
  }) {
    return _then(_$UpdateCollectionDtoImpl(
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateCollectionDtoImpl implements _UpdateCollectionDto {
  _$UpdateCollectionDtoImpl({required this.collectionId, required this.name});

  factory _$UpdateCollectionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateCollectionDtoImplFromJson(json);

  @override
  final String collectionId;
  @override
  final String name;

  @override
  String toString() {
    return 'UpdateCollectionDto(collectionId: $collectionId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCollectionDtoImpl &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, collectionId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCollectionDtoImplCopyWith<_$UpdateCollectionDtoImpl> get copyWith =>
      __$$UpdateCollectionDtoImplCopyWithImpl<_$UpdateCollectionDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateCollectionDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateCollectionDto implements UpdateCollectionDto {
  factory _UpdateCollectionDto(
      {required final String collectionId,
      required final String name}) = _$UpdateCollectionDtoImpl;

  factory _UpdateCollectionDto.fromJson(Map<String, dynamic> json) =
      _$UpdateCollectionDtoImpl.fromJson;

  @override
  String get collectionId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$UpdateCollectionDtoImplCopyWith<_$UpdateCollectionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
