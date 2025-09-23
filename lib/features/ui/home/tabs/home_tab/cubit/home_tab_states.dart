import 'package:ecommerce/domain/entities/response/category.dart';

sealed class HomeTabStates {}

class HomeTabInitialState extends HomeTabStates{}
class HomeTabLoadingState extends HomeTabStates{}
class HomeTabErrorState extends HomeTabStates{
  String message;
  HomeTabErrorState({required this.message});
}
class HomeTabSuccessState extends HomeTabStates{
  List<Category>? getCategoriesList;
  HomeTabSuccessState({required this.getCategoriesList});
}