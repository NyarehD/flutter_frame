import 'package:geolocator/geolocator.dart';
import 'package:webview_flutter/webview_flutter.dart';

interface class LeafletMapHelper {
  final WebViewController webViewController;
  final bool isReady = false;

  LeafletMapHelper({required this.webViewController});

  Future<void> goToCurrentLocation(Position position) async {
    final lat = position.latitude.toString();
    final lon = position.longitude.toString();

    try {
      await webViewController.runJavaScript(
        'window.onFlutterLocation($lat, $lon);',
      );
    } catch (e) {}
  }

  /// Send a single GPS point to the webview so it can append it to the
  /// path polyline (calls `window.addPathPoint(lat, lon)`).
  Future<void> sendPositionToWebView(Position position) async {
    final lat = position.latitude.toString();
    final lon = position.longitude.toString();
    try {
      await webViewController.runJavaScript('window.addPathPoint($lat, $lon);');
    } catch (e) {}
  }
}
