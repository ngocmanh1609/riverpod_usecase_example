// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/network/repository/github_repository.dart' as _i5;
import '../data/network/service/github_service.dart' as _i9;
import '../ui/screen/detail/github_detail_model.dart' as _i7;
import '../ui/screen/overview/github_overview_model.dart' as _i8;
import '../usecase/get_github_repositories_usecase.dart' as _i4;
import '../usecase/get_github_repository_usecase.dart' as _i6;
import 'module/network_module.dart' as _i10;
import 'provider/dio_provider.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final networkModule = _$NetworkModule();
  gh.lazySingleton<_i3.DioProvider>(() => networkModule.dioProvider);
  gh.factory<_i4.GetGithubRepositoriesUseCase>(
      () => _i4.GetGithubRepositoriesUseCase(get<_i5.GithubRepository>()));
  gh.factory<_i6.GetGithubRepositoryUseCase>(
      () => _i6.GetGithubRepositoryUseCase(get<_i5.GithubRepository>()));
  gh.factory<_i7.GithubDetailModel>(
      () => _i7.GithubDetailModel(get<_i6.GetGithubRepositoryUseCase>()));
  gh.factory<_i8.GithubOverViewModel>(
      () => _i8.GithubOverViewModel(get<_i4.GetGithubRepositoriesUseCase>()));
  gh.singleton<_i9.GithubService>(
      networkModule.provideGithubService(get<_i3.DioProvider>()));
  gh.singleton<_i5.GithubRepository>(
      _i5.GithubRepositoryImpl(get<_i9.GithubService>()));
  return get;
}

class _$NetworkModule extends _i10.NetworkModule {}
