import 'package:equatable/equatable.dart';
import 'package:flutter_frame/domain/models/product/product_model.dart';

enum ProductViewModelStateStatus { initial, loading, success, failure }

class ProductViewModelState extends Equatable {
  const ProductViewModelState({
    this.status = ProductViewModelStateStatus.initial,
    this.hasReachedEnd = false,
    this.currentPage = 1,
    this.product,
  });

  final ProductViewModelStateStatus status;
  final bool hasReachedEnd;
  final int currentPage;
  final ProductModel? product;

  ProductViewModelState copyWith({
    ProductViewModelStateStatus? status,
    bool? hasReachedEnd,
    int? currentPage,
    ProductModel? product,
  }) {
    return ProductViewModelState(
      status: status ?? this.status,
      hasReachedEnd: hasReachedEnd ?? this.hasReachedEnd,
      currentPage: currentPage ?? this.currentPage,
      product: product ?? this.product,
    );
  }

  @override
  List<Object> get props => [status, hasReachedEnd, currentPage];
}
