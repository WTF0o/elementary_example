// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:elementary_test/app/di_app.dart' as _i286;
import 'package:elementary_test/data/di/di_data.dart' as _i258;
import 'package:elementary_test/data/mapper/av_mapper.dart' as _i442;
import 'package:elementary_test/data/repository/av_repository_impl.dart'
    as _i580;
import 'package:elementary_test/data/repository/favorite_repository_impl.dart'
    as _i582;
import 'package:elementary_test/data/service/database_service.dart' as _i31;
import 'package:elementary_test/data/service/http_service.dart' as _i56;
import 'package:elementary_test/domain/interactor/av_interactor.dart' as _i367;
import 'package:elementary_test/domain/interactor/favorite_interactor.dart'
    as _i113;
import 'package:elementary_test/domain/repository/av_repository.dart' as _i216;
import 'package:elementary_test/domain/repository/favorite_repository.dart'
    as _i468;
import 'package:elementary_test/presentation/router/router.dart' as _i666;
import 'package:elementary_test/presentation/screen/favorite/favorite_model.dart'
    as _i535;
import 'package:elementary_test/presentation/screen/favorite/favorite_wm.dart'
    as _i287;
import 'package:elementary_test/presentation/screen/main/main_model.dart'
    as _i860;
import 'package:elementary_test/presentation/screen/main/main_wm.dart' as _i250;
import 'package:get_it/get_it.dart' as _i174;
import 'package:go_router/go_router.dart' as _i583;
import 'package:injectable/injectable.dart' as _i526;
import 'package:talker_flutter/talker_flutter.dart' as _i207;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final diApp = _$DiApp();
    final appRouter = _$AppRouter();
    final diData = _$DiData();
    gh.singleton<_i207.Talker>(() => diApp.talker);
    gh.singleton<_i583.GoRouter>(() => appRouter.router);
    gh.singleton<_i31.IDatabaseService>(() => _i31.HiveService());
    gh.factory<_i442.IAvMapper>(() => _i442.AvMapper());
    gh.singleton<_i361.Dio>(() => diData.dio(gh<_i207.Talker>()));
    gh.factory<_i468.IFavoriteRepository>(
      () => _i582.FavoriteRepositoryImpl(gh<_i31.IDatabaseService>()),
    );
    gh.singleton<_i56.IHttpService>(() => _i56.HttpService(gh<_i361.Dio>()));
    gh.factory<_i113.IFavoriteInteractor>(
      () => _i113.FavoriteInteractor(gh<_i468.IFavoriteRepository>()),
    );
    gh.factory<_i216.IAvRepository>(
      () => _i580.AvRepositoryImpl(
        gh<_i56.IHttpService>(),
        gh<_i442.IAvMapper>(),
      ),
    );
    gh.factory<_i535.FavoriteModel>(
      () => _i535.FavoriteModel(gh<_i113.IFavoriteInteractor>()),
    );
    gh.factory<_i367.IAvInteractor>(
      () => _i367.AvInteractor(gh<_i216.IAvRepository>()),
    );
    gh.factory<_i287.FavoriteWidgetModel>(
      () => _i287.FavoriteWidgetModel(gh<_i535.FavoriteModel>()),
    );
    gh.factory<_i860.MainModel>(
      () => _i860.MainModel(
        gh<_i367.IAvInteractor>(),
        gh<_i113.IFavoriteInteractor>(),
      ),
    );
    gh.factory<_i250.MainWidgetModel>(
      () => _i250.MainWidgetModel(gh<_i860.MainModel>()),
    );
    return this;
  }
}

class _$DiApp extends _i286.DiApp {}

class _$AppRouter extends _i666.AppRouter {}

class _$DiData extends _i258.DiData {}
