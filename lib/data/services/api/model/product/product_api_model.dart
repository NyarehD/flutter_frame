import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_api_model.freezed.dart';
part 'product_api_model.g.dart';

@freezed
abstract class ProductApiModel with _$ProductApiModel {
  const factory ProductApiModel({
    required int id,
    required String title,
    required String description,
    required String category,
    required double price,
    required double discountPercentage,
    required double rating,
    required int stock,
    required List<String> tags,
    required String? brand,
    required String sku,
    required int weight,
    required ProductApiDimensions dimensions,
    required String warrantyInformation,
    required String shippingInformation,
    required String availabilityStatus,
    required List<ProductApiReview> reviews,
    required String returnPolicy,
    required int minimumOrderQuantity,
    required ProductApiMeta meta,
    required List<String> images,
    required String thumbnail,
  }) = _ProductApiModel;

  factory ProductApiModel.fromJson(Map<String, Object?> json) =>
      _$ProductApiModelFromJson(json);
}

@freezed
abstract class ProductApiMeta with _$ProductApiMeta {
  const factory ProductApiMeta({
    required DateTime createdAt,
    required DateTime updatedAt,
    required String barcode,
    required String qrCode,
  }) = _ProductApiMeta;

  factory ProductApiMeta.fromJson(Map<String, Object?> json) =>
      _$ProductApiMetaFromJson(json);
}

@freezed
abstract class ProductApiDimensions with _$ProductApiDimensions {
  const factory ProductApiDimensions({
    required double width,
    required double height,
    required double depth,
  }) = _ProductApiDimensions;

  factory ProductApiDimensions.fromJson(Map<String, Object?> json) =>
      _$ProductApiDimensionsFromJson(json);
}

@freezed
abstract class ProductApiReview with _$ProductApiReview {
  const factory ProductApiReview({
    required int rating,
    required String comment,
    required DateTime date,
    required String reviewerName,
    required String reviewerEmail,
  }) = _ProductApiReview;

  factory ProductApiReview.fromJson(Map<String, Object?> json) =>
      _$ProductApiReviewFromJson(json);
}
