// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i528;

import '../../api/data_sources/remote/auth_remote_data_source_impl.dart'
    as _i740;
import '../../api/data_sources/remote/brand_remote_data_source_impl.dart'
    as _i113;
import '../../api/data_sources/remote/cart_remote_data_source_impl.dart'
    as _i406;
import '../../api/data_sources/remote/category_remote_data_source_impl.dart'
    as _i448;
import '../../api/data_sources/remote/product_remote_data_source_impl.dart'
    as _i895;
import '../../api/dio/dio_module.dart' as _i67;
import '../../api/web_services.dart' as _i1069;
import '../../data/data_sources/remote/auth_remote_data_source.dart' as _i865;
import '../../data/data_sources/remote/brand_remote_data_source.dart' as _i114;
import '../../data/data_sources/remote/cart_remote_data_source.dart' as _i489;
import '../../data/data_sources/remote/category_remote_data_source.dart'
    as _i344;
import '../../data/data_sources/remote/product_remote_data_source.dart'
    as _i189;
import '../../data/repositories/auth_repository_impl.dart' as _i895;
import '../../data/repositories/brand_repository_impl.dart' as _i90;
import '../../data/repositories/cart_repository_impl.dart' as _i915;
import '../../data/repositories/category_repository_impl.dart' as _i538;
import '../../data/repositories/product_repository_impl.dart' as _i876;
import '../../domain/repositories/auth_repository.dart' as _i1073;
import '../../domain/repositories/brand/brand_repository.dart' as _i825;
import '../../domain/repositories/cart/cart_repository.dart' as _i388;
import '../../domain/repositories/category/category_repository.dart' as _i612;
import '../../domain/repositories/product/product_repository.dart' as _i774;
import '../../domain/use_caeses/add_to_cart_use_case.dart' as _i575;
import '../../domain/use_caeses/delete_item_from_cart_use_case.dart' as _i658;
import '../../domain/use_caeses/get_all_brands_use_case.dart' as _i524;
import '../../domain/use_caeses/get_all_categories_use_case.dart' as _i616;
import '../../domain/use_caeses/get_all_product_use_case.dart' as _i955;
import '../../domain/use_caeses/get_items_cart_use_case.dart' as _i666;
import '../../domain/use_caeses/login_use_case.dart' as _i608;
import '../../domain/use_caeses/register_use_case.dart' as _i153;
import '../../domain/use_caeses/update_count_in_cart_use_case.dart' as _i22;
import '../../features/ui/auth/login/cubit/login_view_model.dart' as _i245;
import '../../features/ui/auth/register/cubit/register_view_model.dart'
    as _i873;
import '../../features/ui/home/cubit/home_screen_view_model.dart' as _i714;
import '../../features/ui/home/tabs/home_tab/cubit/home_tab_view_model.dart'
    as _i976;
import '../../features/ui/home/tabs/product_tab/cubit/product_tab_view_model.dart'
    as _i774;
import '../../features/ui/pages/cart/cubit/cart_view_model.dart' as _i776;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final getItModule = _$GetItModule();
    gh.factory<_i714.HomeScreenViewModel>(() => _i714.HomeScreenViewModel());
    gh.singleton<_i361.BaseOptions>(() => getItModule.provideBaseOptions());
    gh.singleton<_i528.PrettyDioLogger>(
      () => getItModule.providePrettyDioLogger(),
    );
    gh.singleton<_i361.Dio>(
      () => getItModule.provideDio(
        gh<_i361.BaseOptions>(),
        gh<_i528.PrettyDioLogger>(),
      ),
    );
    gh.singleton<_i1069.WebServices>(
      () => getItModule.provideWebServices(gh<_i361.Dio>()),
    );
    gh.factory<_i189.ProductRemoteDataSource>(
      () => _i895.ProductRemoteDataSourceImpl(
        webServices: gh<_i1069.WebServices>(),
      ),
    );
    gh.factory<_i865.AuthRemoteDataSource>(
      () =>
          _i740.AuthRemoteDataSourceImpl(webServices: gh<_i1069.WebServices>()),
    );
    gh.factory<_i344.CategoryRemoteDataSource>(
      () => _i448.CategoryRemoteDataSourceImpl(
        webServices: gh<_i1069.WebServices>(),
      ),
    );
    gh.factory<_i774.ProductRepository>(
      () => _i876.ProductRepositoryImpl(
        remoteDataSource: gh<_i189.ProductRemoteDataSource>(),
      ),
    );
    gh.factory<_i612.CategoryRepository>(
      () => _i538.CategoryRepositoryImpl(
        remoteDataSource: gh<_i344.CategoryRemoteDataSource>(),
      ),
    );
    gh.factory<_i616.GetAllCategoriesUseCase>(
      () => _i616.GetAllCategoriesUseCase(
        categoryRepository: gh<_i612.CategoryRepository>(),
      ),
    );
    gh.factory<_i1073.AuthRepository>(
      () => _i895.AuthRepositoryImpl(
        authRemoteDataSource: gh<_i865.AuthRemoteDataSource>(),
      ),
    );
    gh.factory<_i489.CartRemoteDataSource>(
      () =>
          _i406.CartRemoteDataSourceImpl(webServices: gh<_i1069.WebServices>()),
    );
    gh.factory<_i388.CartRepository>(
      () => _i915.CartRepositoryImpl(
        remoteDataSource: gh<_i489.CartRemoteDataSource>(),
      ),
    );
    gh.factory<_i955.GetAllProductUseCase>(
      () => _i955.GetAllProductUseCase(
        productRepository: gh<_i774.ProductRepository>(),
      ),
    );
    gh.factory<_i114.BrandRemoteDataSource>(
      () => _i113.BrandRemoteDataSourceImpl(
        webServices: gh<_i1069.WebServices>(),
      ),
    );
    gh.factory<_i608.LoginUseCase>(
      () => _i608.LoginUseCase(authRepository: gh<_i1073.AuthRepository>()),
    );
    gh.factory<_i153.RegisterUseCase>(
      () => _i153.RegisterUseCase(authRepository: gh<_i1073.AuthRepository>()),
    );
    gh.factory<_i774.ProductTabViewModel>(
      () => _i774.ProductTabViewModel(
        getAllProductsUseCase: gh<_i955.GetAllProductUseCase>(),
      ),
    );
    gh.factory<_i245.LoginViewModel>(
      () => _i245.LoginViewModel(loginUseCase: gh<_i608.LoginUseCase>()),
    );
    gh.factory<_i825.BrandRepository>(
      () => _i90.BrandRepositoryImpl(
        remoteDataSource: gh<_i114.BrandRemoteDataSource>(),
      ),
    );
    gh.factory<_i575.AddToCartUseCase>(
      () => _i575.AddToCartUseCase(cartRepository: gh<_i388.CartRepository>()),
    );
    gh.factory<_i666.GetItemsCartUseCase>(
      () =>
          _i666.GetItemsCartUseCase(cartRepository: gh<_i388.CartRepository>()),
    );
    gh.factory<_i658.DeleteItemFromCartUseCase>(
      () => _i658.DeleteItemFromCartUseCase(
        cartRepository: gh<_i388.CartRepository>(),
      ),
    );
    gh.factory<_i22.UpdateCountInCartUseCase>(
      () => _i22.UpdateCountInCartUseCase(
        cartRepository: gh<_i388.CartRepository>(),
      ),
    );
    gh.factory<_i873.RegisterViewModel>(
      () =>
          _i873.RegisterViewModel(registerUseCase: gh<_i153.RegisterUseCase>()),
    );
    gh.factory<_i776.CartViewModel>(
      () => _i776.CartViewModel(
        addToCartUseCase: gh<_i575.AddToCartUseCase>(),
        getItemsCartUseCase: gh<_i666.GetItemsCartUseCase>(),
        deleteItemsInCartUseCase: gh<_i658.DeleteItemFromCartUseCase>(),
        updateCountInCartUseCase: gh<_i22.UpdateCountInCartUseCase>(),
      ),
    );
    gh.factory<_i524.GetAllBrandsUseCase>(
      () => _i524.GetAllBrandsUseCase(
        brandRepository: gh<_i825.BrandRepository>(),
      ),
    );
    gh.factory<_i976.HomeTabViewModel>(
      () => _i976.HomeTabViewModel(
        getAllCategoriesUseCase: gh<_i616.GetAllCategoriesUseCase>(),
        getAllBrandsUseCase: gh<_i524.GetAllBrandsUseCase>(),
      ),
    );
    return this;
  }
}

class _$GetItModule extends _i67.GetItModule {}
