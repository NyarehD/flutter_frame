import 'package:dio/dio.dart';
import 'package:flutter_frame/data/services/api/dto/response_dto.dart';
import 'package:flutter_frame/data/services/api/model/product/product_api_model.dart';

interface class ProductApiService {
  final Dio dio;

  ProductApiService({required this.dio});

  Future<Response<ProductApiModel>> getId(String id) async {
    final response = await dio.get("/product/$id");

    final data = ProductApiModel.fromJson(response.data);
    return ResponseDto.transform(response, data);
  }

  Future<Response<List<ProductApiModel>>> getList() async {
    final response = await dio.get("/product");

    final data = (response.data as List<dynamic>)
        .map((item) => ProductApiModel.fromJson(item))
        .toList();
    return ResponseDto.transform(response, data);
  }
}
