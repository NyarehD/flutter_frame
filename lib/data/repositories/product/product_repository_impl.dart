import 'package:dio/dio.dart';
import 'package:flutter_frame/data/services/api/api_service/product_api_service.dart';
import 'package:flutter_frame/data/services/api/dto/product_api_dto.dart';
import 'package:flutter_frame/domain/models/product/product_model.dart';
import 'package:flutter_frame/domain/repositories/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {
  final ProductApiService productApiService;

  // Add a proper typed parameter so the analyzer knows the type.
  ProductRepositoryImpl({required this.productApiService});

  @override
  Future<ProductModel?> getById(String id, CancelToken? cancelToken) async {
    try {
      final result = await (productApiService.getId(id, cancelToken));

      final api = result.data!;

      return ProductApiDto.transform(api);
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) return null;
      print(
        'ProductRepositoryImpl.getById - DioError: ${e.message}, '
        'statusCode=${e.response?.statusCode}, data=${e.response?.data}',
      );
      return null;
    } catch (e, st) {
      // Any other unexpected error - log and return null.
      print('ProductRepositoryImpl.getById - Unexpected error: $e\n$st');
      return null;
    }
  }

  @override
  Future<List<ProductModel>?> getAll() async {
    try {
      final result = await (productApiService.getList());

      final api = (result.data);

      return api?.products
              .map((api) => ProductApiDto.transform(api))
              .toList() ??
          [];
    } on DioException catch (e) {
      // If the product is not found return null to the caller.
      // Log the error for debugging. In production you may want to use a
      // centralized logger and propagate the error instead of swallowing it.
      // Keep the method signature unchanged (returns null on error).
      print(
        'ProductRepositoryImpl.getById - DioError: ${e.message}, '
        'statusCode=${e.response?.statusCode}, data=${e.response?.data}',
      );
      return null;
    } catch (e, st) {
      // Any other unexpected error - log and return null.
      print('ProductRepositoryImpl.getById - Unexpected error: $e\n$st');
      return null;
    }
  }
}
