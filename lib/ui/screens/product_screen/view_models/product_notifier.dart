import 'package:flutter_frame/data/repositories/product/product_repository.dart';
import 'package:flutter_frame/di/repository_provider/product_repository_provider.dart';
import 'package:flutter_frame/ui/screens/product_screen/view_models/product_view_model_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_notifier.g.dart';

@riverpod
class ProductNotifier extends _$ProductNotifier {
  @override
  ProductViewModelState build() => ProductViewModelState();

  void fetchProducts() async {
    ProductRepository productRepository = ref.read(productRepositoryProvider);
    final data = await productRepository.getById("4");
    state = state.copyWith(
      product: data,
      status: ProductViewModelStateStatus.success,
    );
  }
}
