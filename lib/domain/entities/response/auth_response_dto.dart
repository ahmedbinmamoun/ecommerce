import 'package:ecommerce/domain/entities/response/user_dto.dart';

class AuthResponseDto {
  UserDto? userDto;
  String? token;

  AuthResponseDto({required this.userDto, required this.token});
}