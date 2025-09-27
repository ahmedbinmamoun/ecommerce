import 'package:dio/dio.dart';
import 'package:ecommerce/api/api_endpoints.dart';
import 'package:ecommerce/api/model/request/login_request.dart';
import 'package:ecommerce/api/model/request/register_request.dart';
import 'package:ecommerce/api/model/response/auth_response.dart';
import 'package:ecommerce/api/model/response/brands/brand_response_dto.dart';
import 'package:ecommerce/api/model/response/cart/add_cart/add_cart_dto.dart';
import 'package:ecommerce/api/model/response/category/category_response_dto.dart';
import 'package:ecommerce/api/model/response/products/product_response_dto.dart';
import 'package:ecommerce/domain/entities/response/add_cart_response.dart';
import 'package:retrofit/retrofit.dart';

part 'web_services.g.dart';

@RestApi(baseUrl: ApiEndpoints.baseUrl)
abstract class WebServices {
  factory WebServices(Dio dio, {String? baseUrl}) = _WebServices;
  
  @POST(ApiEndpoints.loginApi)
  Future<AuthResponse> login(@Body() LoginRequest loginRequest);

  @POST(ApiEndpoints.registerApi)
  Future<AuthResponse> register(@Body() RegisterRequest registerRequest);

  @GET(ApiEndpoints.categoriesApi)
  Future<CategoryResponseDto> getAllCategories();

  @GET(ApiEndpoints.brandsApi)
  Future<BrandResponseDto> getAllBrands();

  @GET(ApiEndpoints.productsApi)
  Future<ProductResponseDto> getAllProducts();

  @POST(ApiEndpoints.cartApi)
  Future<AddCartDto> addToCart();
}

