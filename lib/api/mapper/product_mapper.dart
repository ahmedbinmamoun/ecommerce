import 'package:ecommerce/api/model/response/category/category_dto.dart';
import 'package:ecommerce/domain/entities/response/category.dart';

extension CategoryMapper on CategoryDto{

  Category toCategory(){
    return Category(
      id: id,
      image: image,
      name: name,
      slug: slug,
    );
  }
}