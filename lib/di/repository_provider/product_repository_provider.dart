import 'package:flutter_frame/data/repositories/product/product_repository.dart';
import 'package:flutter_frame/data/repositories/product/product_repository_impl.dart';
import 'package:flutter_frame/data/services/api/api_client.dart';
import 'package:flutter_frame/di/api_client_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_repository_provider.g.dart';

@riverpod
ProductRepository productRepository(Ref ref) {
  // Read the ApiClient provider and pass it into the repository implementation.
  ApiClient apiClient = ref.read(apiClientProvider);
  return ProductRepositoryImpl(apiClient: apiClient);
}
