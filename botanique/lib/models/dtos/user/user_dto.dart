import 'package:dart_mappable/dart_mappable.dart';

part 'user_dto.mapper.dart';

@MappableClass()
class UserDto with UserDtoMappable {
  final String? username;
  final String? password;
  final String? base64Image;
  final String? userEmail;

  UserDto({
    this.username,
    this.password,
    this.base64Image,
    this.String? userEmail,
  });
}

@MappableClass()
class GetUserDto with GetUserDtoMappable {
  final String userEmail;
  final String username;
  final String? blobUrl;

  GetUserDto({
    required this.userEmail,
    required this.username,
    this.blobUrl,
  });
}

enum FieldType {
  username,
  password,
  base64Image,
}
