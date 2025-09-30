import 'package:dio/dio.dart';
import 'package:ecommerce/api/api_endpoints.dart';
import 'package:ecommerce/api/model/request/add_product_request_dto.dart';
import 'package:ecommerce/api/model/request/count_request_dto.dart';
import 'package:ecommerce/api/model/request/login_request.dart';
import 'package:ecommerce/api/model/request/register_request.dart';
import 'package:ecommerce/api/model/response/auth_response.dart';
import 'package:ecommerce/api/model/response/brands/brand_response_dto.dart';
import 'package:ecommerce/api/model/response/cart/add_cart/add_cart_response_dto.dart';
import 'package:ecommerce/api/model/response/cart/get_cart/get_cart_response_dto.dart';
import 'package:ecommerce/api/model/response/category/category_response_dto.dart';
import 'package:ecommerce/api/model/response/products/product_response_dto.dart';
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

  @POST(ApiEndpoints.addToCartApi)
  Future<AddCartResponseDto> addToCart(
    @Body() AddProductRequestDto productReqest,
    @Header('token') String token
  );

  @GET(ApiEndpoints.addToCartApi)
  Future<GetCartResponseDto> getItemsInCart(
    @Header('token') String token
  );

  @DELETE(ApiEndpoints.deleteCartApi)
  Future<GetCartResponseDto> deleteItemFromCart(
    @Path('productId') String productId,
    @Header('token') String token
  );

  @PUT(ApiEndpoints.deleteCartApi)
  Future<GetCartResponseDto> updateCountsInCart(
    @Path('productId') String productId,
    @Header('token') String token,
    @Body() CountRequestDto countRequest
  );
  
}

