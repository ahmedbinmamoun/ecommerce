import 'package:ecommerce/features/ui/home/cubit/home_screen_states.dart';
import 'package:ecommerce/features/ui/home/tabs/favorite_tab/Favorite_tab.dart';
import 'package:ecommerce/features/ui/home/tabs/home_tab/home_tab_screen.dart';
import 'package:ecommerce/features/ui/home/tabs/product_tab/products_tab.dart';
import 'package:ecommerce/features/ui/home/tabs/user_tab/user_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';



@injectable
class HomeScreenViewModel extends Cubit<HomeScreenStates>{
  HomeScreenViewModel():super(HomeInitialState());
  int selectedIndex = 0;
  List<Widget> bodyList = [
     HomeTab(),
    ProductsTab(),
    FavoriteTab(),
    const UserTab()
  ];
  void bottomNavOnTap(int index) {
    selectedIndex = index;
    emit(ChangeSelectedIndexState());
  }
}