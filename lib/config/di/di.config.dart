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
import '../../api/dio/dio_module.dart' as _i67;
import '../../api/web_services.dart' as _i1069;
import '../../data/data_sources/remote/auth_remote_data_source.dart' as _i865;
import '../../data/data_sources/remote/category_remote_data_source.dart'
    as _i344;
import '../../data/repositories/auth_repository_impl.dart' as _i895;
import '../../data/repositories/brand_repository_impl.dart' as _i90;
import '../../data/repositories/category_repository_impl.dart' as _i538;
import '../../data/repositories/product_repository_impl.dart' as _i876;
import '../../domain/repositories/auth_repository.dart' as _i1073;
import '../../domain/use_caeses/get_all_brands_use_case.dart' as _i524;
import '../../domain/use_caeses/get_all_categories_use_case.dart' as _i616;
import '../../domain/use_caeses/get_all_product_use_case.dart' as _i955;
import '../../domain/use_caeses/login_use_case.dart' as _i608;
import '../../domain/use_caeses/register_use_case.dart' as _i153;
import '../../features/ui/auth/login/cubit/login_view_model.dart' as _i245;
import '../../features/ui/auth/register/cubit/register_view_model.dart'
    as _i873;
import '../../features/ui/home/cubit/home_screen_view_model.dart' as _i714;
import '../../features/ui/home/tabs/home_tab/cubit/home_tab_view_model.dart'
    as _i976;

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
    gh.factory<_i955.GetAllProductUseCase>(
      () => _i955.GetAllProductUseCase(productRepository: gh<InvalidType>()),
    );
    gh.factory<_i876.ProductRepositoryImpl>(
      () => _i876.ProductRepositoryImpl(remoteDataSource: gh<InvalidType>()),
    );
    gh.singleton<_i361.Dio>(
      () => getItModule.provideDio(
        gh<_i361.BaseOptions>(),
        gh<_i528.PrettyDioLogger>(),
      ),
    );
    gh.factory<_i538.CategoryRepositoryImpl>(
      () => _i538.CategoryRepositoryImpl(
        remoteDataSource: gh<_i344.CategoryRemoteDataSource>(),
      ),
    );
    gh.factory<_i90.CategoryRepositoryImpl>(
      () => _i90.CategoryRepositoryImpl(
        remoteDataSource: gh<_i344.CategoryRemoteDataSource>(),
      ),
    );
    gh.factory<_i616.GetAllBrandsUseCase>(
      () => _i616.GetAllBrandsUseCase(brandRepository: gh<InvalidType>()),
    );
    gh.factory<_i524.GetAllBrandsUseCase>(
      () => _i524.GetAllBrandsUseCase(brandRepository: gh<InvalidType>()),
    );
    gh.factory<_i976.HomeTabViewModel>(
      () => _i976.HomeTabViewModel(
        getAllCategoriesUseCase: gh<InvalidType>(),
        getAllBrandsUseCase: gh<dynamic>(),
      ),
    );
    gh.singleton<_i1069.WebServices>(
      () => getItModule.provideWebServices(gh<_i361.Dio>()),
    );
    gh.factory<_i865.AuthRemoteDataSource>(
      () =>
          _i740.AuthRemoteDataSourceImpl(webServices: gh<_i1069.WebServices>()),
    );
    gh.factory<_i1073.AuthRepository>(
      () => _i895.AuthRepositoryImpl(
        authRemoteDataSource: gh<_i865.AuthRemoteDataSource>(),
      ),
    );
    gh.factory<_i608.LoginUseCase>(
      () => _i608.LoginUseCase(authRepository: gh<_i1073.AuthRepository>()),
    );
    gh.factory<_i153.RegisterUseCase>(
      () => _i153.RegisterUseCase(authRepository: gh<_i1073.AuthRepository>()),
    );
    gh.factory<_i245.LoginViewModel>(
      () => _i245.LoginViewModel(loginUseCase: gh<_i608.LoginUseCase>()),
    );
    gh.factory<_i873.RegisterViewModel>(
      () =>
          _i873.RegisterViewModel(registerUseCase: gh<_i153.RegisterUseCase>()),
    );
    return this;
  }
}

class _$GetItModule extends _i67.GetItModule {}
