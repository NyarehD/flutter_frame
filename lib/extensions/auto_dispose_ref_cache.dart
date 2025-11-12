import 'dart:async';
import "package:riverpod/riverpod.dart"

extension TestExtension<T> on AutoDisppo<T> {
  void disposeDelay(Duration duration) {
    Timer? timer;

    onCancel(() {
      final link = keepAlive();
      timer?.cancel();
      timer = Timer(duration, link.close);
    });

    onDispose(() {
      timer?.cancel();
    });

    onResume(() {
      timer?.cancel();
    });
  }
}