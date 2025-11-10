import 'package:flutter_frame/domain/models/product/product_model.dart';

abstract class ProductRepository {
  Future<ProductModel?> getById(String id);
  Future<List<ProductModel>?> getAll();
}
