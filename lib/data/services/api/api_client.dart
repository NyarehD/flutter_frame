import 'package:dio/dio.dart';

sealed class TypeTest {}

class ListTypeTest extends TypeTest {
  late Map<String, dynamic> type;
  ListTypeTest({required this.type});
}

class ItemTypeTest extends TypeTest {
  late List<Map<String, dynamic>> type;
  ItemTypeTest({required this.type});
}

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

  Future<Response<T>> get<T>(String path, T Function(TypeTest) fromJson) async {
    final rawResponse = await dio.get(path);
    final typedResponse = Response<T>(
      data: fromJson(rawResponse.data),
      requestOptions: rawResponse.requestOptions,
      statusCode: rawResponse.statusCode,
      statusMessage: rawResponse.statusMessage,
      headers: rawResponse.headers,
      isRedirect: rawResponse.isRedirect,
      redirects: rawResponse.redirects,
      extra: rawResponse.extra,
    );
    return typedResponse;
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
