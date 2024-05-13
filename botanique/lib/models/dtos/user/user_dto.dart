import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  factory UserDto({String? username, String? password, String? base64Image, String? userEmail}) =
      _UserDto;
  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

@freezed
class GetUserDto with _$GetUserDto {
  factory GetUserDto(
      {required String userEmail,
      required String username,
      String? blobUrl}) = _GetUserDto;
  factory GetUserDto.fromJson(Map<String, dynamic> json) =>
      _$GetUserDtoFromJson(json);
}

enum FieldType {
  username,
  password,
  base64Image,
}
