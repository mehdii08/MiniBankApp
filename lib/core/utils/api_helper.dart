import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_bank_app/core/errors/network_exceptions.dart';
import 'package:mini_bank_app/i18n/strings.g.dart';

@lazySingleton
class ApiHelper {
  ApiHelper(this._dio);
  final Dio _dio;

  Future<Response<dynamic>> get(String path, {Map<String, dynamic>? query}) async {
    try {

      final Response<dynamic> res = await _dio.get<dynamic>(path, queryParameters: query);
      return res;
    } on DioException catch (e) {
      throw _mapDioError(e);
    } catch (e) {
      throw ConnectivityException(t.unexpectedError, cause: e);
    }
  }

  NetworkException _mapDioError(DioException e) {
    // connectivity
    if (e.type == DioExceptionType.connectionError || e.type == DioExceptionType.connectionTimeout || e.type == DioExceptionType.receiveTimeout) {
      return ConnectivityException(t.noInternet, cause: e);
    }

    final int? status = e.response?.statusCode;
    if (status != null) {
      if (status >= 400 && status < 500) {
        return ClientErrorException(t.requestError + ' (' + status.toString() + ')', statusCode: status, cause: e);
      }
      if (status >= 500) {
        return ServerErrorException(t.serverError + ' (' + status.toString() + ')', statusCode: status, cause: e);
      }
    }
    return NetworkException(t.networkError, statusCode: status, cause: e);
  }
}


