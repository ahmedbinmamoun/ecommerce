import 'package:ecommerce/api/mapper/category_mapper.dart';
import 'package:ecommerce/api/web_services.dart';
import 'package:ecommerce/core/exception/app_exception.dart';
import 'package:ecommerce/data/data_sources/remote/brand_remote_data_source.dart';
import 'package:ecommerce/domain/entities/response/category.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BrandRemoteDataSource)
class BrandRemoteDataSourceImpl implements BrandRemoteDataSource{
  WebServices webServices;
  BrandRemoteDataSourceImpl({required this.webServices});
  @override
  Future<List<Category>?> getAllBrands() async{
    try {
      var brandResponse = await webServices.getAllBrands();
    return brandResponse.data?.map((categoryDto)=> categoryDto.toCategory()).toList() ?? [];
    } on AppException catch (e) {
      throw ServerException(message: e.message);
    }
  }

}