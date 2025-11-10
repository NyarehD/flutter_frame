import 'package:flutter_frame/data/services/api/model/product/product_api_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list_api_model.freezed.dart';
part 'product_list_api_model.g.dart';

@freezed
abstract class ProductListApiModel with _$ProductListApiModel {
  const factory ProductListApiModel({
    required int total,
    required int skip,
    required int limit,
    required List<ProductApiModel> products,
  }) = _ProductListApiModel;

  factory ProductListApiModel.fromJson(Map<String, Object?> json) =>
      _$ProductListApiModelFromJson(json);
}
