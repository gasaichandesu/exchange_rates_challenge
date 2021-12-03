import 'dart:convert';

import 'package:exchange_rates_challenge/data/exceptions/exceptions.dart';
import 'package:exchange_rates_challenge/data/repositories/rates_repository.dart';
import 'package:exchange_rates_challenge/ui/models/models.dart';
import 'package:exchange_rates_challenge/ui/viewmodels/view_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class HomeViewModel extends ViewModel {
  final SharedPreferences _sharedPreferences;
  final RatesRepository _currencyRepository;

  List<ViewRate> _rates = const [];

  HomeViewModel(
    this._currencyRepository,
    this._sharedPreferences,
  );

  Future<void> loadRates() async {
    try {
      setError(false);
      setBusy(true);

      final cachedRates = _sharedPreferences.getString(ViewModel.ratesPrefsKey);

      final todayRates =
          await _currencyRepository.fetchExchangeRates(DateTime.now());
      final tomorrowRates = await _currencyRepository
          .fetchExchangeRates(DateTime.now().add(const Duration(days: 1)));

      if (cachedRates == null) {
        final List<String> enabledByDefault =
            dotenv.env['DEFAULT_CURRENCIES']!.split(',');

        _rates = List<ViewRate>.generate(todayRates.length, (int index) {
          final rate = todayRates[index];

          return ViewRate(
              abbreviation: rate.abbreviation,
              id: rate.id,
              name: rate.name,
              scale: rate.scale,
              isEnabled: enabledByDefault.contains(rate.abbreviation),
              todayRate: rate.rate,
              order: index,
              tomorrowRate: tomorrowRates[index].rate);
        });
      } else {
        final List<ViewRate> decodedRates = (jsonDecode(cachedRates) as List)
            .map((rate) => ViewRate.fromJson(rate))
            .toList();

        _rates = List<ViewRate>.generate(decodedRates.length, (int index) {
          final rate = decodedRates[index];

          return rate.copyWith(
            todayRate: todayRates[index].rate,
            tomorrowRate: tomorrowRates[index].rate,
          );
        });
      }
    } on ServerError {
      setError(true);
    } finally {
      setBusy(false);
    }
  }

  UnmodifiableListView<ViewRate> get rates =>
      UnmodifiableListView<ViewRate>(_rates);

  UnmodifiableListView<ViewRate> get sortedRates =>
      UnmodifiableListView<ViewRate>(
        _rates
            .where((rate) => rate.isEnabled)
            .sorted((a, b) => a.order!.compareTo(b.order!)),
      );
}
