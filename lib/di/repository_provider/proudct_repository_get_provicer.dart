import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_frame/di/repository_provider/product_repository_provider.dart';
import 'package:flutter_frame/domain/models/product/product_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'proudct_repository_get_provicer.g.dart';

@Riverpod(keepAlive: true)
Future<ProductModel?> productRepositoryGet(Ref ref, String id) {
  print('init: fetchPost($id)');

  final CancelToken cancelToken = CancelToken();
  ref.onDispose(() {
    print('dispose: fetchPost($id)');
    cancelToken.cancel();
  });

  final timer = Timer(const Duration(seconds: 30), () {
    // dispose on timeout
    .close();
  });
  // make sure to cancel the timer when the provider state is disposed
  // (prevents undesired test failures)
  ref.onDispose(() => timer.cancel());

  return ref.watch(productRepositoryProvider).getById(id, cancelToken);
}
