import 'package:dio/dio.dart';

class ResponseDto {
  static Response<T> transform<T>(Response<dynamic> response, T data) {
    return Response<T>(
      data: data,
      requestOptions: response.requestOptions,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      headers: response.headers,
      isRedirect: response.isRedirect,
      redirects: response.redirects,
      extra: response.extra,
    );
  }
}
