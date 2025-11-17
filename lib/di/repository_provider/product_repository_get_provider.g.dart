// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_repository_get_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(productRepositoryGet)
const productRepositoryGetProvider = ProductRepositoryGetFamily._();

final class ProductRepositoryGetProvider
    extends
        $FunctionalProvider<
          AsyncValue<ProductModel?>,
          ProductModel?,
          FutureOr<ProductModel?>
        >
    with $FutureModifier<ProductModel?>, $FutureProvider<ProductModel?> {
  const ProductRepositoryGetProvider._({
    required ProductRepositoryGetFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'productRepositoryGetProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productRepositoryGetHash();

  @override
  String toString() {
    return r'productRepositoryGetProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ProductModel?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ProductModel?> create(Ref ref) {
    final argument = this.argument as String;
    return productRepositoryGet(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductRepositoryGetProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productRepositoryGetHash() =>
    r'fbb4c06315c95ea755fd545731e53c9e3f9b964f';

final class ProductRepositoryGetFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ProductModel?>, String> {
  const ProductRepositoryGetFamily._()
    : super(
        retry: null,
        name: r'productRepositoryGetProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductRepositoryGetProvider call(String id) =>
      ProductRepositoryGetProvider._(argument: id, from: this);

  @override
  String toString() => r'productRepositoryGetProvider';
}
