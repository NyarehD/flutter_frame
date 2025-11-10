import 'package:flutter_frame/di/repository_provider/product_repository_provider.dart';
import 'package:flutter_frame/domain/repositories/product_repository.dart';
import 'package:flutter_frame/ui/screens/product_list_screen/view_models/product_list_view_model_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productListProvider =
    NotifierProvider<ProductListNotifier, ProductListViewModelState>(
      () => ProductListNotifier(),
    );

class ProductListNotifier extends Notifier<ProductListViewModelState> {
  @override
  ProductListViewModelState build() => ProductListViewModelState();

  void fetchProducts() async {
    ProductRepository productRepository = ref.read(productRepositoryProvider);
    final data = await productRepository.getAll();
    state = state.copyWith(
      products: data,
      status: ProductListViewModelStateStatus.success,
    );
  }
}
