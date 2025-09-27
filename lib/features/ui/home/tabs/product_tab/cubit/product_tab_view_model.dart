import 'package:ecommerce/core/exception/app_exception.dart';
import 'package:ecommerce/features/ui/home/tabs/product_tab/cubit/product_tab_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductTabViewModel extends Cubit<ProductTabStates>{
  GetAllProductsUseCase getAllProductsUseCase ;
  ProductTabViewModel({required this.getAllProductsUseCase}):super(ProductLoadingState());
  //todo: hold data - handle logic


  Future<void> getProducts()async{
    try{
      emit(ProductLoadingState());
      var productsList = await getAllProductsUseCase.invoke();
      emit(ProductSuccessState(productsList: productsList));
    }on AppException catch(e){
      emit(ProductErrorState(message: e.message));
    }
  }
}