import 'package:dart_mappable/dart_mappable.dart';

part 'user_dto.mapper.dart';

@MappableClass()
class UpdateUserDto with UpdateUserDtoMappable {
  final String? username;
  final String? password;
  final String? base64Image;

  UpdateUserDto({
    this.username,
    this.password,
    this.base64Image,
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