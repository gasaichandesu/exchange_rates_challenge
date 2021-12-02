import 'dart:io';

import 'package:dio/dio.dart';
import 'package:exchange_rates_challenge/data/exceptions/exceptions.dart';
import 'package:exchange_rates_challenge/data/models/models.dart';
import 'package:exchange_rates_challenge/data/repositories/rates_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

void main() {
  final dio = Dio();
  final dioAdapter = DioAdapter(dio: dio);

  group('currency repository test', () {
    test('should return array of currencies', () async {
      dioAdapter.onGet(
          '',
          (server) => server.reply(
              200, File('test/unit/currency_fixture.json').readAsStringSync()));

      final currencyRepository = NBRBCurrencyRepository(dio);

      expect(
        await currencyRepository.fetchExchangeRates(DateTime.now()),
        isA<List<Rate>>(),
      );
    });

    test('should throw a server error', () {
      dioAdapter.onGet('', (server) => server.reply(500, ''));

      final currencyRepository = NBRBCurrencyRepository(dio);

      expect(
          () async =>
              await currencyRepository.fetchExchangeRates(DateTime.now()),
          throwsA(isA<ServerError>()));
    });
  });
}
