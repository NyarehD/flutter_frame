import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CacheKeepAlive {
  Ref ref;
  Timer? timer;
  CancelToken cancelToken = CancelToken();

  CacheKeepAlive({required this.ref, this.timer}) {
    cacheTimeout();
  }

  void cacheTimeout() {
    final link = ref.keepAlive();

    ref.onDispose(() {
      print("onDispose");
      timer?.cancel();
      cancelToken.cancel();
    });

    ref.onCancel(() {
      print("onCancel");
      cancelToken.cancel();
      timer = Timer(const Duration(seconds: 30), () {
        print("timerCB");
        link.close();
      });
    });

    ref.onResume(() {
      print("onResume");
      timer?.cancel();
    });
  }
}
