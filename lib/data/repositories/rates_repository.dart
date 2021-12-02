import 'package:dio/dio.dart';
import 'package:exchange_rates_challenge/data/exceptions/exceptions.dart';
import 'package:exchange_rates_challenge/data/models/models.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

abstract class RatesRepository {
  Future<List<Rate>> fetchExchangeRates(DateTime date);
}

@LazySingleton(as: RatesRepository)
class NBRBCurrencyRepository implements RatesRepository {
  final Dio _client;

  NBRBCurrencyRepository(this._client);

  @override
  Future<List<Rate>> fetchExchangeRates(DateTime date) async {
    try {
      final response = await _client.get('', queryParameters: <String, dynamic>{
        'periodicity': 0,
        'ondate': DateFormat('dd.MM.yyyy').format(date)
      });

      return (response.data as List)
          .map((currency) => Rate.fromJson(currency))
          .toList();
    } on DioError {
      throw ServerError();
    }
  }
}
