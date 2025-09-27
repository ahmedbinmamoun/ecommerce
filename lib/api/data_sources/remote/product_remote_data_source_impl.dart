import 'package:ecommerce/api/mapper/category_mapper.dart';
import 'package:ecommerce/api/mapper/product_mapper.dart';
import 'package:ecommerce/api/web_services.dart';
import 'package:ecommerce/core/exception/app_exception.dart';
import 'package:ecommerce/data/data_sources/remote/brand_remote_data_source.dart';
import 'package:ecommerce/data/data_sources/remote/product_remote_data_source.dart';
import 'package:ecommerce/domain/entities/response/category.dart';
import 'package:ecommerce/domain/entities/response/product.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductRemoteDataSource)
class ProductRemoteDataSourceImpl implements ProductRemoteDataSource{
  WebServices webServices;
  ProductRemoteDataSourceImpl({required this.webServices});
  @override
  Future<List<Product>?> getAllProducts() async{
    try {
      var productResponse = await webServices.getAllProducts();
    return productResponse.data?.map((productDto)=> productDto.toProduct()).toList() ?? [];
    } on AppException catch (e) {
      throw ServerException(message: e.message);
    }
  }

}