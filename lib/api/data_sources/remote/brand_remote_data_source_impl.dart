import 'package:ecommerce/api/mapper/category_mapper.dart';
import 'package:ecommerce/api/web_services.dart';
import 'package:ecommerce/core/exception/app_exception.dart';
import 'package:ecommerce/data/data_sources/remote/category_remote_data_source.dart';
import 'package:ecommerce/domain/entities/response/category.dart';

class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource{
  WebServices webServices;
  CategoryRemoteDataSourceImpl({required this.webServices});
  @override
  Future<List<Category>?> getAllCategories() async{
    try {
      var categoryResponse = await webServices.getAllCategories();
    return categoryResponse.data?.map((categoryDto)=> categoryDto.toCategory()).toList() ?? [];
    } on AppException catch (e) {
      throw ServerException(message: e.message);
    }
  }

}