// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/repositories/rates_repository.dart' as _i4;
import 'modules/http_module.dart' as _i6;
import 'ui/viewmodels/home_view_model.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final httpModule = _$HttpModule();
  gh.lazySingleton<_i3.Dio>(() => httpModule.dio);
  gh.lazySingleton<_i4.RatesRepository>(
      () => _i4.NBRBCurrencyRepository(get<_i3.Dio>()));
  gh.factory<_i5.HomeViewModel>(
      () => _i5.HomeViewModel(get<_i4.RatesRepository>()));
  return get;
}

class _$HttpModule extends _i6.HttpModule {}
