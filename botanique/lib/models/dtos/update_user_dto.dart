import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_dto.freezed.dart';

@freezed
class UpdateUserDto with _$UpdateUserDto {
  factory UpdateUserDto(
      {required String? username,
      required String? password,
      required String? base64Image}) = _UpdateUserDto;
}
