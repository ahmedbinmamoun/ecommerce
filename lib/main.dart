import 'package:ecommerce/config/di/di.dart';
import 'package:ecommerce/config/my_bloc_observer.dart';
import 'package:ecommerce/core/cach/shared_prefs_utils.dart';
import 'package:ecommerce/core/utils/app_routes.dart';
import 'package:ecommerce/core/utils/app_theme.dart';
import 'package:ecommerce/features/ui/auth/login/login_screen.dart';
import 'package:ecommerce/features/ui/auth/register/register_screen.dart';
import 'package:ecommerce/features/ui/home/home_screen.dart';
import 'package:ecommerce/features/ui/home/tabs/home_tab/home_tab_screen.dart';
import 'package:ecommerce/features/ui/pages/cart/cart_screen.dart';
import 'package:ecommerce/features/ui/pages/cart/cubit/cart_view_model.dart';
import 'package:ecommerce/features/ui/pages/product_dtails/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  configureDependencies();
  await SharedPrefsUtils.init();
  String routeName;
  var token = SharedPrefsUtils.getData(key: 'token');
  if (token == null) {
    routeName = AppRoutes.loginRoute;
  }else{
    routeName = AppRoutes.homeRoute;
  }
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context)=> getIt<CartViewModel>()),
    ],
    child: MyApp(routeName: routeName,)));
}

class MyApp extends StatelessWidget {
  String routeName;
   MyApp({super.key, required this.routeName});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        initialRoute: routeName,
        routes: {
          AppRoutes.loginRoute : (context) => LoginScreen(),
          AppRoutes.registerRoute : (context) => RegisterScreen(),
          AppRoutes.homeRoute : (context) => HomeScreen(),
          AppRoutes.cartRoute: (context) => const CartScreen(),
            AppRoutes.productRoute: (context) => ProductDetailsScreen(),
        },
      );
      },
    );
  }
}