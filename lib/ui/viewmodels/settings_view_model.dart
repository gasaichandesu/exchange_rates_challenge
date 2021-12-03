import 'dart:convert';

import 'package:exchange_rates_challenge/ui/models/view_rate.dart';
import 'package:exchange_rates_challenge/ui/viewmodels/view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class SettingsViewModel extends ViewModel {
  final SharedPreferences _sharedPreferences;

  late List<ViewRate> _rates;

  SettingsViewModel(
    this._sharedPreferences,
    @factoryParam UnmodifiableListView<ViewRate>? rates,
  ) {
    _rates = List<ViewRate>.from(rates!);
  }

  void switchRate(int index, bool value) {
    _rates[index] = _rates[index].copyWith(isEnabled: value);

    notifyListeners();
  }

  void onReorder(int index, int newIndex) {
    if (index < newIndex) {
      newIndex -= 1;
    }

    final rate = _rates.removeAt(index);

    _rates.insert(newIndex, rate);

    notifyListeners();
  }

  Future<void> onSave() async {
    _sharedPreferences.setString(
        ViewModel.ratesPrefsKey,
        jsonEncode(_rates
            .asMap()
            .map((index, rate) => MapEntry(index, rate.copyWith(order: index)))
            .values
            .toList()));
  }

  UnmodifiableListView<ViewRate> get rates =>
      UnmodifiableListView<ViewRate>(_rates);
}
