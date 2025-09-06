import 'package:ecommerce/config/di/di.dart';
import 'package:ecommerce/config/my_bloc_observer.dart';
import 'package:ecommerce/core/utils/app_routes.dart';
import 'package:ecommerce/core/utils/app_theme.dart';
import 'package:ecommerce/features/ui/auth/login/login_screen.dart';
import 'package:ecommerce/features/ui/auth/register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



void main(){
  Bloc.observer = MyBlocObserver();
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        initialRoute: AppRoutes.loginRoute,
        routes: {
          AppRoutes.loginRoute : (context) => LoginScreen(),
          AppRoutes.registerRoute : (context) => RegisterScreen()
        },
      );
      },
    );
  }
}