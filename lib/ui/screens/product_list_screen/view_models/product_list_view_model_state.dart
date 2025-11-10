import 'package:equatable/equatable.dart';
import 'package:flutter_frame/domain/models/product/product_model.dart';

enum ProductListViewModelStateStatus { initial, loading, success, failure }

class ProductListViewModelState extends Equatable {
  const ProductListViewModelState({
    this.status = ProductListViewModelStateStatus.initial,
    this.hasReachedEnd = false,
    this.currentPage = 1,
    this.products,
  });

  final ProductListViewModelStateStatus status;
  final bool hasReachedEnd;
  final int currentPage;
  final List<ProductModel>? products;

  ProductListViewModelState copyWith({
    ProductListViewModelStateStatus? status,
    bool? hasReachedEnd,
    int? currentPage,
    List<ProductModel>? products,
  }) {
    return ProductListViewModelState(
      status: status ?? this.status,
      hasReachedEnd: hasReachedEnd ?? this.hasReachedEnd,
      currentPage: currentPage ?? this.currentPage,
      products: products ?? this.products,
    );
  }

  @override
  List<Object> get props => [status, hasReachedEnd, currentPage];
}
