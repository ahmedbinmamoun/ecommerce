import 'package:ecommerce/core/exception/app_exception.dart';
import 'package:ecommerce/core/utils/app_assets.dart';
import 'package:ecommerce/domain/use_caeses/get_all_categories_use_case.dart';
import 'package:ecommerce/features/ui/home/tabs/home_tab/cubit/home_tab_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeTabViewModel extends Cubit<HomeTabStates> {
  GetAllCategoriesUseCase getAllCategoriesUseCase;
  HomeTabViewModel({required this.getAllCategoriesUseCase})
    : super(HomeTabInitialState());

  List<String> imagesList = [
    AppAssets.announcement1,
    AppAssets.announcement2,
    AppAssets.announcement3,
  ];

  Future<void> getCategoriesList() async {
    try {
      emit(HomeTabLoadingState());
      var categoriesList = await getAllCategoriesUseCase.invoke();
      emit(HomeTabSuccessState(getCategoriesList: categoriesList));
    } on AppException catch (e) {
      emit(HomeTabErrorState(message: e.message));
    }
  }
}
