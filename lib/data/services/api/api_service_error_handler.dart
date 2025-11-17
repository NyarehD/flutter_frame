import 'package:dio/dio.dart';

mixin ApiServiceErrorHandler {
  T? handleError<T>(Object error, [StackTrace? stackTrace]) {
    if (error is DioException) {
      if (error.response?.statusCode == 404) return null;
      print(
        'ProductRepositoryImpl - DioError: ${error.message}, '
        'statusCode=${error.response?.statusCode}, data=${error.response?.data}',
      );
    } else {
      print('ProductRepositoryImpl - Unexpected error: $error\n$stackTrace');
    }
    return null;
  }
}
