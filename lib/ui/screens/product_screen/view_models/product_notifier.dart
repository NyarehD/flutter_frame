import 'package:flutter_frame/di/repository_provider/product_repository_get_provider.dart';
import 'package:flutter_frame/domain/models/product/product_model.dart';
import 'package:flutter_frame/ui/screens/product_screen/view_models/product_view_model_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_notifier.g.dart';

@riverpod
class ProductNotifier extends _$ProductNotifier {
  @override
  ProductViewModelState build() => ProductViewModelState();

  void fetchProducts(String id) async {
    // Listen to the repository provider so we react to changes (loading -> data/error)
    ref.listen<AsyncValue<ProductModel?>>(productRepositoryGetProvider(id), (previous, next) {
      next.when(
        data: (product) {
          state = state.copyWith(
            product: product,
            status: ProductViewModelStateStatus.success,
          );
        },
        error: (e, st) {
          state = state.copyWith(status: ProductViewModelStateStatus.failure);
        },
        loading: () {
          state = state.copyWith(status: ProductViewModelStateStatus.loading);
        },
      );
    }, fireImmediately: true);
  }
}
