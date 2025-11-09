import 'package:dio/dio.dart';
import 'package:flutter_frame/data/services/api/api_client.dart';
import 'package:flutter_frame/data/services/api/model/product/product_api_model.dart';

interface class ProductApiService {
  final ApiClient _apiClient;

  ProductApiService({required ApiClient apiClient}) : _apiClient = apiClient;

  Future<Response<ProductApiModel>> getId(String id) async => (await _apiClient.get("/product/$id", ProductApiModel.fromJson));
}
