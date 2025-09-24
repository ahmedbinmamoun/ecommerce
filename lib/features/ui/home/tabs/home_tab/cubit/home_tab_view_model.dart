import 'package:ecommerce/core/exception/app_exception.dart';
import 'package:ecommerce/core/utils/app_assets.dart';
import 'package:ecommerce/domain/use_caeses/get_all_brands_use_case.dart';
import 'package:ecommerce/domain/use_caeses/get_all_categories_use_case.dart';
import 'package:ecommerce/features/ui/home/tabs/home_tab/cubit/home_tab_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeTabViewModel extends Cubit<HomeTabStates>{
  GetAllCategoriesUseCase getAllCategoriesUseCase ;
  GetAllBrandsUseCase getAllBrandsUseCase ;
  HomeTabViewModel({required this.getAllCategoriesUseCase,
  required this.getAllBrandsUseCase}):super(HomeTabInitialState());
  //todo: hold data - handle logic
  List<String> imagesList = [
    AppAssets.announcement1,
    AppAssets.announcement2,
    AppAssets.announcement3,
  ];

  HomeTabSuccessState successState = HomeTabSuccessState();

  Future<void> getCategories()async{
    try{
      emit(CategoryLoadingState());
      var categoriesList = await getAllCategoriesUseCase.invoke();
      emit(successState = successState.copyWith(categoriesList: categoriesList));
    }on AppException catch(e){
      emit(CategoryErrorState(message: e.message));
    }
  }
  Future<void> getBrands()async{
    try{
      emit(BrandLoadingState());
      var brandsList = await getAllBrandsUseCase.invoke();
      emit(successState = successState.copyWith(brandsList: brandsList));
    }on AppException catch(e){
      emit(BrandErrorState(message: e.message));
    }
  }
}