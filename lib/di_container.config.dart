// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:freezed_annotation/freezed_annotation.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import 'data/repositories/rates_repository.dart' as _i4;
import 'modules/modules.dart' as _i10;
import 'ui/models/view_rate.dart' as _i9;
import 'ui/viewmodels/home_view_model.dart' as _i6;
import 'ui/viewmodels/settings_view_model.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final thirdPartyModules = _$ThirdPartyModules();
  gh.lazySingleton<_i3.Dio>(() => thirdPartyModules.dio);
  gh.lazySingleton<_i4.RatesRepository>(
      () => _i4.NBRBCurrencyRepository(get<_i3.Dio>()));
  await gh.factoryAsync<_i5.SharedPreferences>(() => thirdPartyModules.prefs,
      preResolve: true);
  gh.factory<_i6.HomeViewModel>(() => _i6.HomeViewModel(
      get<_i4.RatesRepository>(), get<_i5.SharedPreferences>()));
  gh.factoryParam<_i7.SettingsViewModel,
          _i8.UnmodifiableListView<_i9.ViewRate>?, dynamic>(
      (rates, _) => _i7.SettingsViewModel(get<_i5.SharedPreferences>(), rates));
  return get;
}

class _$ThirdPartyModules extends _i10.ThirdPartyModules {}
