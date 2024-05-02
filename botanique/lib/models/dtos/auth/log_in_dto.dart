import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_in_dto.freezed.dart';
part 'log_in_dto.g.dart';

@freezed
class LoginDto with _$LoginDto {
  const factory LoginDto({
    required String email,
    required String password,
  }) = _LoginDto;

  factory LoginDto.fromJson(Map<String, dynamic> json) => _$LoginDtoFromJson(json);
}