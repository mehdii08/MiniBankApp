/// Categorized network exceptions that ApiHelper can throw upstream.
class NetworkException implements Exception {
  NetworkException(this.message, {this.statusCode, this.cause});
  final String message;
  final int? statusCode;
  final Object? cause;

  @override
  String toString() => 'NetworkException(statusCode: ' + (statusCode?.toString() ?? 'null') + ', message: ' + message + ')';
}

class ClientErrorException extends NetworkException {
  ClientErrorException(String message, {int? statusCode, Object? cause})
      : super(message, statusCode: statusCode, cause: cause);
}

class ServerErrorException extends NetworkException {
  ServerErrorException(String message, {int? statusCode, Object? cause})
      : super(message, statusCode: statusCode, cause: cause);
}

class ConnectivityException extends NetworkException {
  ConnectivityException(String message, {Object? cause})
      : super(message, statusCode: null, cause: cause);
}




