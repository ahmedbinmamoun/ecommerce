  import 'package:ecommerce/domain/entities/response/product.dart';
import 'package:ecommerce/domain/repositories/product/product_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllProductUseCase {
  ProductRepository productRepository;
  GetAllProductUseCase({required this.productRepository});

  Future<List<Product>?> invoke(){
    return productRepository.getAllProducts();
  }
}