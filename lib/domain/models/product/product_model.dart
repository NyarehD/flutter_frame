import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    required String title,
    required String description,
    required String category,
    required double price,
    required double discountPercentage,
    required double rating,
    required int stock,
    required List<String> tags,
    required String brand,
    required String sku,
    required int weight,
    required ProductDimensions dimensions,
    required String warrantyInformation,
    required String shippingInformation,
    required String availabilityStatus,
    required List<ProductReview> reviews,
    required String returnPolicy,
    required int minimumOrderQuantity,
    required ProductMeta meta,
    required List<String> images,
    required String thumbnail,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, Object?> json) =>
      _$ProductModelFromJson(json);
}

@freezed
abstract class ProductMeta with _$ProductMeta {
  const factory ProductMeta({
    required DateTime createdAt,
    required DateTime updatedAt,
    required String barcode,
    required String qrCode,
  }) = _ProductMeta;

  factory ProductMeta.fromJson(Map<String, Object?> json) =>
      _$ProductMetaFromJson(json);
}

@freezed
abstract class ProductDimensions with _$ProductDimensions {
  const factory ProductDimensions({
    required double width,
    required double height,
    required double depth,
  }) = _ProductDimensions;

  factory ProductDimensions.fromJson(Map<String, Object?> json) =>
      _$ProductDimensionsFromJson(json);
}

@freezed
abstract class ProductReview with _$ProductReview {
  const factory ProductReview({
    required int rating,
    required String comment,
    required DateTime date,
    required String reviewerName,
    required String reviewerEmail,
  }) = _ProductReview;

  factory ProductReview.fromJson(Map<String, Object?> json) =>
      _$ProductReviewFromJson(json);
}
