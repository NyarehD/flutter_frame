import 'package:dio/dio.dart';

class ApiClient {
  final String baseUrl;
  final String? accessToken;

  late Dio dio;

  ApiClient({this.accessToken, required this.baseUrl}) {
    final BaseOptions dioOptions = BaseOptions(
      baseUrl: baseUrl,
      headers: accessToken != null
          ? {"Authorization": 'Bearer $accessToken'}
          : null,
    );

    dio = Dio(dioOptions);
    dio.interceptors.add(_errorInterceptor());
    dio.interceptors.add(_successInterceptor());
  }

  Interceptor _errorInterceptor() {
    return InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        return handler.next(options);
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) {
        return handler.next(response);
      },
      onError: (DioException error, ErrorInterceptorHandler handler) {
        return handler.next(error);
      },
    );
  }

  Interceptor _successInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) {
        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onError: (error, handler) {
        return handler.next(error);
      },
    );
  }
}
