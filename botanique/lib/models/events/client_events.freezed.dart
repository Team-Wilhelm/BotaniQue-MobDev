// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientWantsToRemoveBackgroundFromImage
    _$ClientWantsToRemoveBackgroundFromImageFromJson(
        Map<String, dynamic> json) {
  return _ClientWantsToRemoveBackgroundFromImage.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToRemoveBackgroundFromImage {
  @XFileConverter()
  XFile get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToRemoveBackgroundFromImageCopyWith<
          ClientWantsToRemoveBackgroundFromImage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToRemoveBackgroundFromImageCopyWith<$Res> {
  factory $ClientWantsToRemoveBackgroundFromImageCopyWith(
          ClientWantsToRemoveBackgroundFromImage value,
          $Res Function(ClientWantsToRemoveBackgroundFromImage) then) =
      _$ClientWantsToRemoveBackgroundFromImageCopyWithImpl<$Res,
          ClientWantsToRemoveBackgroundFromImage>;
  @useResult
  $Res call({@XFileConverter() XFile image});
}

/// @nodoc
class _$ClientWantsToRemoveBackgroundFromImageCopyWithImpl<$Res,
        $Val extends ClientWantsToRemoveBackgroundFromImage>
    implements $ClientWantsToRemoveBackgroundFromImageCopyWith<$Res> {
  _$ClientWantsToRemoveBackgroundFromImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToRemoveBackgroundFromImageImplCopyWith<$Res>
    implements $ClientWantsToRemoveBackgroundFromImageCopyWith<$Res> {
  factory _$$ClientWantsToRemoveBackgroundFromImageImplCopyWith(
          _$ClientWantsToRemoveBackgroundFromImageImpl value,
          $Res Function(_$ClientWantsToRemoveBackgroundFromImageImpl) then) =
      __$$ClientWantsToRemoveBackgroundFromImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@XFileConverter() XFile image});
}

/// @nodoc
class __$$ClientWantsToRemoveBackgroundFromImageImplCopyWithImpl<$Res>
    extends _$ClientWantsToRemoveBackgroundFromImageCopyWithImpl<$Res,
        _$ClientWantsToRemoveBackgroundFromImageImpl>
    implements _$$ClientWantsToRemoveBackgroundFromImageImplCopyWith<$Res> {
  __$$ClientWantsToRemoveBackgroundFromImageImplCopyWithImpl(
      _$ClientWantsToRemoveBackgroundFromImageImpl _value,
      $Res Function(_$ClientWantsToRemoveBackgroundFromImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$ClientWantsToRemoveBackgroundFromImageImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToRemoveBackgroundFromImageImpl
    implements _ClientWantsToRemoveBackgroundFromImage {
  const _$ClientWantsToRemoveBackgroundFromImageImpl(
      {@XFileConverter() required this.image});

  factory _$ClientWantsToRemoveBackgroundFromImageImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToRemoveBackgroundFromImageImplFromJson(json);

  @override
  @XFileConverter()
  final XFile image;

  @override
  String toString() {
    return 'ClientWantsToRemoveBackgroundFromImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToRemoveBackgroundFromImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToRemoveBackgroundFromImageImplCopyWith<
          _$ClientWantsToRemoveBackgroundFromImageImpl>
      get copyWith =>
          __$$ClientWantsToRemoveBackgroundFromImageImplCopyWithImpl<
              _$ClientWantsToRemoveBackgroundFromImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToRemoveBackgroundFromImageImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToRemoveBackgroundFromImage
    implements ClientWantsToRemoveBackgroundFromImage {
  const factory _ClientWantsToRemoveBackgroundFromImage(
          {@XFileConverter() required final XFile image}) =
      _$ClientWantsToRemoveBackgroundFromImageImpl;

  factory _ClientWantsToRemoveBackgroundFromImage.fromJson(
          Map<String, dynamic> json) =
      _$ClientWantsToRemoveBackgroundFromImageImpl.fromJson;

  @override
  @XFileConverter()
  XFile get image;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToRemoveBackgroundFromImageImplCopyWith<
          _$ClientWantsToRemoveBackgroundFromImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
