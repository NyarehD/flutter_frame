// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductListApiModel _$ProductListApiModelFromJson(Map<String, dynamic> json) =>
    _ProductListApiModel(
      total: (json['total'] as num).toInt(),
      skip: (json['skip'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductApiModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductListApiModelToJson(
  _ProductListApiModel instance,
) => <String, dynamic>{
  'total': instance.total,
  'skip': instance.skip,
  'limit': instance.limit,
  'products': instance.products,
};
