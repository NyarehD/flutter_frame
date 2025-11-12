import 'package:flutter_frame/di/repository_provider/proudct_repository_get_provicer.dart';
import 'package:flutter_frame/ui/screens/product_screen/view_models/product_view_model_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_notifier.g.dart';

@riverpod
class ProductNotifier extends _$ProductNotifier {
  @override
  ProductViewModelState build() => ProductViewModelState();

  void fetchProducts(String id) async {
    final provider = ref.read(productRepositoryGetProvider(id));
    provider.when(
      data: (product) {
        return state = state.copyWith(
          product: product,
          status: ProductViewModelStateStatus.success,
        );
      },
      error: (e, st) {
        return state = state.copyWith(status: ProductViewModelStateStatus.failure);
      },
      loading: () {
        return state = state.copyWith(status: ProductViewModelStateStatus.loading);
      },
    );
  }
}
