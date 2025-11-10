import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_response_model.freezed.dart';
part 'list_response_model.g.dart';

@freezed
abstract class ListResponseModel<T> with _$ListResponseModel<T> {
  const factory ListResponseModel({
    required int total,
    required int skip,
    required int limit,
  }) = _ListResponseModel;

  factory ListResponseModel.fromJson(Map<String, Object?> json) =>
      _$ListResponseModelFromJson(json);
}
