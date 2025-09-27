import 'package:ecommerce/data/data_sources/remote/cart_remote_data_source.dart';
import 'package:ecommerce/domain/entities/response/add_cart_response.dart';
import 'package:ecommerce/domain/repositories/cart/cart_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CartRepository)
class CartRepositoryImpl implements CartRepository{
  CartRemoteDataSource remoteDataSource;
  CartRepositoryImpl({required this.remoteDataSource});
  @override
  Future<AddCartResponse> addCart(String productId) {
    // TODO: implement addCart
    throw UnimplementedError();
  }
}