import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UpdateUserDto with _$UpdateUserDto {
  factory UpdateUserDto(
      {required String userEmail,
        String? username,
      String? password,
      String? base64Image}) = _UpdateUserDto;
  factory UpdateUserDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserDtoFromJson(json);
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
