import 'package:ecommerce/api/mapper/auth_response_mapper.dart';
import 'package:ecommerce/api/mapper/login_request_mapper.dart';
import 'package:ecommerce/api/mapper/register_request_mapper.dart';
import 'package:ecommerce/api/web_services.dart';
import 'package:ecommerce/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:ecommerce/domain/entities/request/login_request_dto.dart';
import 'package:ecommerce/domain/entities/request/register_request_dto.dart';
import 'package:ecommerce/domain/entities/response/auth_response_dto.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource{
  WebServices webServices;
  AuthRemoteDataSourceImpl({required this.webServices});
  @override
  Future<AuthResponseDto> login(LoginRequestDto loginRequest) async{
    // loginRequest to loginReguestDto
   var authRespose = await webServices.login(loginRequest.toLoginRequest());
    // authResponse to authResponsDto
   return authRespose.toAuthResponseDto();

  }

  @override
  Future<AuthResponseDto> register(RegisterRequestDto registerRequest) async{
    var authResponse = await webServices.register(registerRequest.toRegisterDto());
    return authResponse.toAuthResponseDto();
  }

}