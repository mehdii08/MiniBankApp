import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/constants/api.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio dio() => Dio(BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 20),
      ));
}


