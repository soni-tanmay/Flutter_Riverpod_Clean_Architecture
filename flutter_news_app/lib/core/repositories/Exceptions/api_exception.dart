import "package:dio/dio.dart";

class ApiException implements Exception {
  final DioExceptionType dioExceptionType;
  final String message;
  static const String defaultMessage =
      "Something went wrong. Please try again later.";

  ApiException(this.dioExceptionType, this.message);

  factory ApiException.fromDioException(DioException exception,
          [String? customMessage]) =>
      ApiException(
          exception.type,
          switch (exception.type) {
            DioExceptionType.connectionError => "No Internet Connected",
            _ => customMessage ?? exception.message ?? defaultMessage,
          });

  factory ApiException.unknown() =>
      ApiException(DioExceptionType.unknown, defaultMessage);

  @override
  String toString() {
    return "API-Exception: $message";
  }
}
