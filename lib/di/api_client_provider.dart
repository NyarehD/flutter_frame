import 'package:flutter_frame/data/services/api/api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "api_client_provider.g.dart";

@riverpod
ApiClient apiClient(Ref ref) {
  return ApiClient(baseUrl: "https://dummyjson.com/");
}
