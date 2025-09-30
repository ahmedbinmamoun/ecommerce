import 'package:ecommerce/domain/entities/response/get_cart_response.dart';
import 'package:ecommerce/domain/repositories/cart/cart_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteItemFromCartUseCase {
  CartRepository cartRepository;
  DeleteItemFromCartUseCase({required this.cartRepository});

  Future<GetCartResponse> invoke(String productId){
    return cartRepository.deleteItemFromCart(productId);
  }
}