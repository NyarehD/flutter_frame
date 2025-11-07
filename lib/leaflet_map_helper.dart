import 'package:geolocator/geolocator.dart';
import 'package:webview_flutter/webview_flutter.dart';

interface class LeafletMapHelper {
  List<Position> initialPath;
  final WebViewController webViewController;
  bool isReady;
  Function(String message) showError;

  LeafletMapHelper({
    this.isReady = false,
    this.initialPath = const [],
    required this.webViewController,
    required this.showError,
  }) {
    if (initialPath.isNotEmpty) addPathPointList(initialPath);
  }

  Future<void> goToLocation(Position position) async {
    if (!_checkingReadiness()) return;

    final lat = position.latitude.toString();
    final lon = position.longitude.toString();

    try {
      await webViewController.runJavaScript(
        'window.onFlutterLocation($lat, $lon);',
      );
    } catch (e) {
      showError('Unable to get current location: $e');
    }
  }

  /// Send a single GPS point to the webview so it can append it to the
  /// path polyline (calls `window.addPathPoint(lat, lon)`).
  Future<void> addPathPoint(Position position) async {
    if (!_checkingReadiness()) return;

    final lat = position.latitude.toString();
    final lon = position.longitude.toString();
    try {
      await webViewController.runJavaScript('window.addPathPoint($lat, $lon);');
    } catch (e) {
      showError('WebView not ready yet — try again in a moment');
    }
  }

  Future<void> addPathPointList(List<Position> positions) async {
    if (!_checkingReadiness()) return;

    (positions.forEach(addPathPoint));
  }

  bool _checkingReadiness() {
    if (isReady) {
      return true;
    } else {
      showError('WebView not ready yet — try again in a moment');
      return false;
    }
  }
}
