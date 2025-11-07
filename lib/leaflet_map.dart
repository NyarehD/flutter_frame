import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LeafletMap extends StatefulWidget {
  const LeafletMap({super.key});

  @override
  State<LeafletMap> createState() => _LeafletMapState();
}

class _LeafletMapState extends State<LeafletMap> {
  Position? currentPosition;

  late final WebViewController _webviewController;
  late final StreamSubscription<Position> _locationSubscription;
  bool _isWebViewReady = false;

  @override
  void initState() {
    super.initState();
    // Initialize the controller and load the local HTML asset from `assets/leaflet/index.html`.
    _webviewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      // Track when the page finishes loading so we don't call JS too early
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (url) {
            setState(() {
              _isWebViewReady = true;
            });
          },
        ),
      )
      // Use loadFlutterAsset to load a packaged Flutter asset (index.html)
      ..loadFlutterAsset('assets/leaflet/index.html');
    _initLocation();
  }

  @override
  void dispose() {
    _locationSubscription.cancel();
    super.dispose();
  }

  void _initLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    _locationSubscription =
        Geolocator.getPositionStream(
          locationSettings: LocationSettings(
            accuracy: LocationAccuracy.high,
            distanceFilter: 5,
          ),
        ).listen((Position position) {
          print('Location is ${position.latitude}, ${position.longitude}');
          setState(() {
            currentPosition = position;
          });
          // send each new location to the WebView to extend the path polyline
          _goToCurrentLocation(position);
          _sendPositionToWebView(position);
        });
  }

  /// Send a single GPS point to the webview so it can append it to the
  /// path polyline (calls `window.addPathPoint(lat, lon)`).
  Future<void> _sendPositionToWebView(Position position) async {
    // only send when page has finished loading
    if (!_isWebViewReady) return;

    final lat = position.latitude.toString();
    final lon = position.longitude.toString();
    final js = 'window.addPathPoint($lat, $lon);';
    try {
      await _webviewController.runJavaScript(js);
    } catch (e) {
      // ignore transient errors (e.g., webview not ready yet)
      // Optionally log for debugging
      // print('Error sending position to webview: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: _webviewController),
      appBar: AppBar(title: Text("Testing Map")),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _goToCurrentLocation(null),
        child: Icon(Icons.public),
      ),
    );
  }

  /// Send the current (or fetched) location to the webview by calling the
  /// `window.onFlutterLocation(lat, lon)` function defined in the local HTML.
  Future<void> _goToCurrentLocation(Position? propPos) async {
    Position? pos = propPos ?? currentPosition;
    if (pos == null) {
      try {
        pos = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best,
        );
        setState(() {
          currentPosition = pos;
        });
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Unable to get current location: $e')),
        );
        return;
      }
    }

    final lat = pos.latitude.toString();
    final lon = pos.longitude.toString();
    final js = 'window.onFlutterLocation($lat, $lon);';

    // Wait briefly for the page to finish loading / JS to be defined.
    final end = DateTime.now().add(const Duration(seconds: 5));
    while (!_isWebViewReady && DateTime.now().isBefore(end)) {
      await Future.delayed(const Duration(milliseconds: 200));
    }

    if (!_isWebViewReady) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('WebView not ready yet — try again in a moment'),
        ),
      );
      return;
    }

    try {
      await _webviewController.runJavaScript(js);
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error running JS: $e')));
    }
  }
}
