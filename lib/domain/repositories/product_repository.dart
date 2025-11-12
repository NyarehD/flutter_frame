import 'package:dio/dio.dart';
import 'package:flutter_frame/domain/models/product/product_model.dart';

abstract class ProductRepository {
  Future<ProductModel?> getById(String id, CancelToken? cancelToken);
  Future<List<ProductModel>?> getAll();
}
