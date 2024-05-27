import 'package:dart_mappable/dart_mappable.dart';

part 'log_in_dto.mapper.dart';

@MappableClass()
class LoginDto with LoginDtoMappable {
  final String email;
  final String password;

  LoginDto({
    required this.email,
    required this.password,
  });
}

@MappableClass()
class RegisterUserDto with RegisterUserDtoMappable {
  final String email;
  final String password;
  final String username;

  RegisterUserDto({
    required this.email,
    required this.password,
    required this.username,
  });
}