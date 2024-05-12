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
