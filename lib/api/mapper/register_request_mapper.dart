import 'package:ecommerce/api/model/request/register_request.dart';
import 'package:ecommerce/domain/entities/request/register_request_dto.dart';

extension RegisterRequestMapper on RegisterRequestDto{
  RegisterRequest toRegisterDto(){
    return RegisterRequest(
      name: name,
      email: email,
      phone: phone,
      password: password,
      rePassword: rePassword
    );
  }
}