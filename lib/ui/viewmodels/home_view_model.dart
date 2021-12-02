import 'package:exchange_rates_challenge/data/exceptions/exceptions.dart';
import 'package:exchange_rates_challenge/data/repositories/rates_repository.dart';
import 'package:exchange_rates_challenge/ui/models/view_rate.dart';
import 'package:exchange_rates_challenge/ui/viewmodels/view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeViewModel extends ViewModel {
  final RatesRepository _currencyRepository;

  List<ViewRate> _rates = const [];

  HomeViewModel(this._currencyRepository);

  Future<void> loadRates() async {
    try {
      setError(false);
      setBusy(true);

      final todayRates =
          await _currencyRepository.fetchExchangeRates(DateTime.now());
      final tomorrowRates = await _currencyRepository
          .fetchExchangeRates(DateTime.now().add(const Duration(days: 1)));

      /**
     * Since both lists have same length, it is more efficient (O(n)) to generate
     * new list of same length and iterate through it. 
     * It is also beneficient because of access to index
     */
      _rates = List<ViewRate>.generate(todayRates.length, (int index) {
        final rate = todayRates.elementAt(index);

        return ViewRate(
            abbreviation: rate.abbreviation,
            id: rate.id,
            name: rate.name,
            scale: rate.scale,
            todayRate: rate.rate,
            tomorrowRate: tomorrowRates.elementAt(index).rate);
      });
    } on ServerError {
      setError(true);
    } finally {
      setBusy(false);
    }
  }

  UnmodifiableListView<ViewRate> get rates =>
      UnmodifiableListView<ViewRate>(_rates);
}
