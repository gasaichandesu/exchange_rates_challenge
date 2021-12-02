import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@module
abstract class HttpModule {
  @lazySingleton
  Dio get dio => Dio(BaseOptions(
        baseUrl: dotenv.env['API_URL']!,
      ));
}
