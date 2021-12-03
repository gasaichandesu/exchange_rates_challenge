import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class ThirdPartyModules {
  @lazySingleton
  Dio get dio => Dio(BaseOptions(
        baseUrl: dotenv.env['API_URL']!,
      ))
        ..interceptors.add(
          LogInterceptor(
            responseBody: true,
          ),
        );

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
