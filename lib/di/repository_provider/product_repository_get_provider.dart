import 'dart:async';

import 'package:flutter_frame/di/repository_provider/product_repository_provider.dart';
import 'package:flutter_frame/domain/models/product/product_model.dart';
import 'package:flutter_frame/extensions/cache_keep_alive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_repository_get_provider.g.dart';

// @Riverpod(keepAlive: true)
@Riverpod(keepAlive: false)
Future<ProductModel?> productRepositoryGet(Ref ref, String id) {
  CacheKeepAlive cacheKeepAlive = CacheKeepAlive(ref: ref);
  cacheKeepAlive.cacheTimeout();
  return ref
      .watch(productRepositoryProvider)
      .getById(id, cacheKeepAlive.cancelToken);
}
