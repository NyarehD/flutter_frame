import 'package:dio/dio.dart';
import 'package:flutter_frame/data/services/api/dto/response_dto.dart';
import 'package:flutter_frame/data/services/api/model/product/product_api_model.dart';
import 'package:flutter_frame/data/services/api/model/product/product_list_api_model.dart';

interface class ProductApiService {
  final Dio dio;

  ProductApiService({required this.dio});

  Future<Response<ProductApiModel>> getId(
    String id,
    CancelToken? cancelToken,
  ) async {
    final response = await dio.get("/product/$id", cancelToken: cancelToken);

    final data = ProductApiModel.fromJson(response.data);
    return ResponseDto.transform(response, data);
  }

  Future<Response<ProductListApiModel>> getList() async {
    final response = await dio.get("/product");

    final data = ProductListApiModel.fromJson(response.data);
    return ResponseDto.transform(response, data);
  }
}
