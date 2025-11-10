// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductNotifier)
const productProvider = ProductNotifierProvider._();

final class ProductNotifierProvider
    extends $NotifierProvider<ProductNotifier, ProductViewModelState> {
  const ProductNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productNotifierHash();

  @$internal
  @override
  ProductNotifier create() => ProductNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductViewModelState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductViewModelState>(value),
    );
  }
}

String _$productNotifierHash() => r'3feb53ed8f6bbbd2ccd97ba33ac11179146ad726';

abstract class _$ProductNotifier extends $Notifier<ProductViewModelState> {
  ProductViewModelState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ProductViewModelState, ProductViewModelState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ProductViewModelState, ProductViewModelState>,
              ProductViewModelState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
