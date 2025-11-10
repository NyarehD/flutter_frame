// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListResponseModel<T> _$ListResponseModelFromJson<T>(
  Map<String, dynamic> json,
) => _ListResponseModel<T>(
  total: (json['total'] as num).toInt(),
  skip: (json['skip'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
);

Map<String, dynamic> _$ListResponseModelToJson<T>(
  _ListResponseModel<T> instance,
) => <String, dynamic>{
  'total': instance.total,
  'skip': instance.skip,
  'limit': instance.limit,
};
