// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServerSendsImageWithoutBackground _$ServerSendsImageWithoutBackgroundFromJson(
    Map<String, dynamic> json) {
  return _ServerSendsImageWithoutBackground.fromJson(json);
}

/// @nodoc
mixin _$ServerSendsImageWithoutBackground {
  String get base64Image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerSendsImageWithoutBackgroundCopyWith<ServerSendsImageWithoutBackground>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerSendsImageWithoutBackgroundCopyWith<$Res> {
  factory $ServerSendsImageWithoutBackgroundCopyWith(
          ServerSendsImageWithoutBackground value,
          $Res Function(ServerSendsImageWithoutBackground) then) =
      _$ServerSendsImageWithoutBackgroundCopyWithImpl<$Res,
          ServerSendsImageWithoutBackground>;
  @useResult
  $Res call({String base64Image});
}

/// @nodoc
class _$ServerSendsImageWithoutBackgroundCopyWithImpl<$Res,
        $Val extends ServerSendsImageWithoutBackground>
    implements $ServerSendsImageWithoutBackgroundCopyWith<$Res> {
  _$ServerSendsImageWithoutBackgroundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base64Image = null,
  }) {
    return _then(_value.copyWith(
      base64Image: null == base64Image
          ? _value.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerSendsImageWithoutBackgroundImplCopyWith<$Res>
    implements $ServerSendsImageWithoutBackgroundCopyWith<$Res> {
  factory _$$ServerSendsImageWithoutBackgroundImplCopyWith(
          _$ServerSendsImageWithoutBackgroundImpl value,
          $Res Function(_$ServerSendsImageWithoutBackgroundImpl) then) =
      __$$ServerSendsImageWithoutBackgroundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String base64Image});
}

/// @nodoc
class __$$ServerSendsImageWithoutBackgroundImplCopyWithImpl<$Res>
    extends _$ServerSendsImageWithoutBackgroundCopyWithImpl<$Res,
        _$ServerSendsImageWithoutBackgroundImpl>
    implements _$$ServerSendsImageWithoutBackgroundImplCopyWith<$Res> {
  __$$ServerSendsImageWithoutBackgroundImplCopyWithImpl(
      _$ServerSendsImageWithoutBackgroundImpl _value,
      $Res Function(_$ServerSendsImageWithoutBackgroundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base64Image = null,
  }) {
    return _then(_$ServerSendsImageWithoutBackgroundImpl(
      base64Image: null == base64Image
          ? _value.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSendsImageWithoutBackgroundImpl
    implements _ServerSendsImageWithoutBackground {
  const _$ServerSendsImageWithoutBackgroundImpl({required this.base64Image});

  factory _$ServerSendsImageWithoutBackgroundImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerSendsImageWithoutBackgroundImplFromJson(json);

  @override
  final String base64Image;

  @override
  String toString() {
    return 'ServerSendsImageWithoutBackground(base64Image: $base64Image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSendsImageWithoutBackgroundImpl &&
            (identical(other.base64Image, base64Image) ||
                other.base64Image == base64Image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, base64Image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSendsImageWithoutBackgroundImplCopyWith<
          _$ServerSendsImageWithoutBackgroundImpl>
      get copyWith => __$$ServerSendsImageWithoutBackgroundImplCopyWithImpl<
          _$ServerSendsImageWithoutBackgroundImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSendsImageWithoutBackgroundImplToJson(
      this,
    );
  }
}

abstract class _ServerSendsImageWithoutBackground
    implements ServerSendsImageWithoutBackground {
  const factory _ServerSendsImageWithoutBackground(
          {required final String base64Image}) =
      _$ServerSendsImageWithoutBackgroundImpl;

  factory _ServerSendsImageWithoutBackground.fromJson(
          Map<String, dynamic> json) =
      _$ServerSendsImageWithoutBackgroundImpl.fromJson;

  @override
  String get base64Image;
  @override
  @JsonKey(ignore: true)
  _$$ServerSendsImageWithoutBackgroundImplCopyWith<
          _$ServerSendsImageWithoutBackgroundImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerSendsPlant _$ServerSendsPlantFromJson(Map<String, dynamic> json) {
  return _ServerSendsPlant.fromJson(json);
}

/// @nodoc
mixin _$ServerSendsPlant {
  Plant get plant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerSendsPlantCopyWith<ServerSendsPlant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerSendsPlantCopyWith<$Res> {
  factory $ServerSendsPlantCopyWith(
          ServerSendsPlant value, $Res Function(ServerSendsPlant) then) =
      _$ServerSendsPlantCopyWithImpl<$Res, ServerSendsPlant>;
  @useResult
  $Res call({Plant plant});

  $PlantCopyWith<$Res> get plant;
}

/// @nodoc
class _$ServerSendsPlantCopyWithImpl<$Res, $Val extends ServerSendsPlant>
    implements $ServerSendsPlantCopyWith<$Res> {
  _$ServerSendsPlantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plant = null,
  }) {
    return _then(_value.copyWith(
      plant: null == plant
          ? _value.plant
          : plant // ignore: cast_nullable_to_non_nullable
              as Plant,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlantCopyWith<$Res> get plant {
    return $PlantCopyWith<$Res>(_value.plant, (value) {
      return _then(_value.copyWith(plant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServerSendsPlantImplCopyWith<$Res>
    implements $ServerSendsPlantCopyWith<$Res> {
  factory _$$ServerSendsPlantImplCopyWith(_$ServerSendsPlantImpl value,
          $Res Function(_$ServerSendsPlantImpl) then) =
      __$$ServerSendsPlantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Plant plant});

  @override
  $PlantCopyWith<$Res> get plant;
}

/// @nodoc
class __$$ServerSendsPlantImplCopyWithImpl<$Res>
    extends _$ServerSendsPlantCopyWithImpl<$Res, _$ServerSendsPlantImpl>
    implements _$$ServerSendsPlantImplCopyWith<$Res> {
  __$$ServerSendsPlantImplCopyWithImpl(_$ServerSendsPlantImpl _value,
      $Res Function(_$ServerSendsPlantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plant = null,
  }) {
    return _then(_$ServerSendsPlantImpl(
      plant: null == plant
          ? _value.plant
          : plant // ignore: cast_nullable_to_non_nullable
              as Plant,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSendsPlantImpl implements _ServerSendsPlant {
  const _$ServerSendsPlantImpl({required this.plant});

  factory _$ServerSendsPlantImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerSendsPlantImplFromJson(json);

  @override
  final Plant plant;

  @override
  String toString() {
    return 'ServerSendsPlant(plant: $plant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSendsPlantImpl &&
            (identical(other.plant, plant) || other.plant == plant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, plant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSendsPlantImplCopyWith<_$ServerSendsPlantImpl> get copyWith =>
      __$$ServerSendsPlantImplCopyWithImpl<_$ServerSendsPlantImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSendsPlantImplToJson(
      this,
    );
  }
}

abstract class _ServerSendsPlant implements ServerSendsPlant {
  const factory _ServerSendsPlant({required final Plant plant}) =
      _$ServerSendsPlantImpl;

  factory _ServerSendsPlant.fromJson(Map<String, dynamic> json) =
      _$ServerSendsPlantImpl.fromJson;

  @override
  Plant get plant;
  @override
  @JsonKey(ignore: true)
  _$$ServerSendsPlantImplCopyWith<_$ServerSendsPlantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServerCreatesNewPlant _$ServerCreatesNewPlantFromJson(
    Map<String, dynamic> json) {
  return _ServerCreatesNewPlant.fromJson(json);
}

/// @nodoc
mixin _$ServerCreatesNewPlant {
  Plant get plant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerCreatesNewPlantCopyWith<ServerCreatesNewPlant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerCreatesNewPlantCopyWith<$Res> {
  factory $ServerCreatesNewPlantCopyWith(ServerCreatesNewPlant value,
          $Res Function(ServerCreatesNewPlant) then) =
      _$ServerCreatesNewPlantCopyWithImpl<$Res, ServerCreatesNewPlant>;
  @useResult
  $Res call({Plant plant});

  $PlantCopyWith<$Res> get plant;
}

/// @nodoc
class _$ServerCreatesNewPlantCopyWithImpl<$Res,
        $Val extends ServerCreatesNewPlant>
    implements $ServerCreatesNewPlantCopyWith<$Res> {
  _$ServerCreatesNewPlantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plant = null,
  }) {
    return _then(_value.copyWith(
      plant: null == plant
          ? _value.plant
          : plant // ignore: cast_nullable_to_non_nullable
              as Plant,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlantCopyWith<$Res> get plant {
    return $PlantCopyWith<$Res>(_value.plant, (value) {
      return _then(_value.copyWith(plant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServerCreatesNewPlantImplCopyWith<$Res>
    implements $ServerCreatesNewPlantCopyWith<$Res> {
  factory _$$ServerCreatesNewPlantImplCopyWith(
          _$ServerCreatesNewPlantImpl value,
          $Res Function(_$ServerCreatesNewPlantImpl) then) =
      __$$ServerCreatesNewPlantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Plant plant});

  @override
  $PlantCopyWith<$Res> get plant;
}

/// @nodoc
class __$$ServerCreatesNewPlantImplCopyWithImpl<$Res>
    extends _$ServerCreatesNewPlantCopyWithImpl<$Res,
        _$ServerCreatesNewPlantImpl>
    implements _$$ServerCreatesNewPlantImplCopyWith<$Res> {
  __$$ServerCreatesNewPlantImplCopyWithImpl(_$ServerCreatesNewPlantImpl _value,
      $Res Function(_$ServerCreatesNewPlantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plant = null,
  }) {
    return _then(_$ServerCreatesNewPlantImpl(
      plant: null == plant
          ? _value.plant
          : plant // ignore: cast_nullable_to_non_nullable
              as Plant,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerCreatesNewPlantImpl implements _ServerCreatesNewPlant {
  const _$ServerCreatesNewPlantImpl({required this.plant});

  factory _$ServerCreatesNewPlantImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerCreatesNewPlantImplFromJson(json);

  @override
  final Plant plant;

  @override
  String toString() {
    return 'ServerCreatesNewPlant(plant: $plant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerCreatesNewPlantImpl &&
            (identical(other.plant, plant) || other.plant == plant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, plant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerCreatesNewPlantImplCopyWith<_$ServerCreatesNewPlantImpl>
      get copyWith => __$$ServerCreatesNewPlantImplCopyWithImpl<
          _$ServerCreatesNewPlantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerCreatesNewPlantImplToJson(
      this,
    );
  }
}

abstract class _ServerCreatesNewPlant implements ServerCreatesNewPlant {
  const factory _ServerCreatesNewPlant({required final Plant plant}) =
      _$ServerCreatesNewPlantImpl;

  factory _ServerCreatesNewPlant.fromJson(Map<String, dynamic> json) =
      _$ServerCreatesNewPlantImpl.fromJson;

  @override
  Plant get plant;
  @override
  @JsonKey(ignore: true)
  _$$ServerCreatesNewPlantImplCopyWith<_$ServerCreatesNewPlantImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerSendsErrorMessage _$ServerSendsErrorMessageFromJson(
    Map<String, dynamic> json) {
  return _ServerSendsErrorMessage.fromJson(json);
}

/// @nodoc
mixin _$ServerSendsErrorMessage {
  String get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerSendsErrorMessageCopyWith<ServerSendsErrorMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerSendsErrorMessageCopyWith<$Res> {
  factory $ServerSendsErrorMessageCopyWith(ServerSendsErrorMessage value,
          $Res Function(ServerSendsErrorMessage) then) =
      _$ServerSendsErrorMessageCopyWithImpl<$Res, ServerSendsErrorMessage>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ServerSendsErrorMessageCopyWithImpl<$Res,
        $Val extends ServerSendsErrorMessage>
    implements $ServerSendsErrorMessageCopyWith<$Res> {
  _$ServerSendsErrorMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerSendsErrorMessageImplCopyWith<$Res>
    implements $ServerSendsErrorMessageCopyWith<$Res> {
  factory _$$ServerSendsErrorMessageImplCopyWith(
          _$ServerSendsErrorMessageImpl value,
          $Res Function(_$ServerSendsErrorMessageImpl) then) =
      __$$ServerSendsErrorMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ServerSendsErrorMessageImplCopyWithImpl<$Res>
    extends _$ServerSendsErrorMessageCopyWithImpl<$Res,
        _$ServerSendsErrorMessageImpl>
    implements _$$ServerSendsErrorMessageImplCopyWith<$Res> {
  __$$ServerSendsErrorMessageImplCopyWithImpl(
      _$ServerSendsErrorMessageImpl _value,
      $Res Function(_$ServerSendsErrorMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ServerSendsErrorMessageImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSendsErrorMessageImpl implements _ServerSendsErrorMessage {
  const _$ServerSendsErrorMessageImpl({required this.error});

  factory _$ServerSendsErrorMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerSendsErrorMessageImplFromJson(json);

  @override
  final String error;

  @override
  String toString() {
    return 'ServerSendsErrorMessage(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSendsErrorMessageImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSendsErrorMessageImplCopyWith<_$ServerSendsErrorMessageImpl>
      get copyWith => __$$ServerSendsErrorMessageImplCopyWithImpl<
          _$ServerSendsErrorMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSendsErrorMessageImplToJson(
      this,
    );
  }
}

abstract class _ServerSendsErrorMessage implements ServerSendsErrorMessage {
  const factory _ServerSendsErrorMessage({required final String error}) =
      _$ServerSendsErrorMessageImpl;

  factory _ServerSendsErrorMessage.fromJson(Map<String, dynamic> json) =
      _$ServerSendsErrorMessageImpl.fromJson;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ServerSendsErrorMessageImplCopyWith<_$ServerSendsErrorMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
