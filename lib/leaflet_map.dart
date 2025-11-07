import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_frame/leaflet_map_helper.dart';
import 'package:geolocator/geolocator.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LeafletMap extends StatefulWidget {
  const LeafletMap({super.key});

  @override
  State<LeafletMap> createState() => _LeafletMapState();
}

class _LeafletMapState extends State<LeafletMap> {
  Position? currentPosition;
  List<Position> historyPath = [];

  late final WebViewController _webviewController;
  late final StreamSubscription<Position> _locationSubscription;
  late final LeafletMapHelper _leafletMapHelper;

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
          currentPosition = position;
          historyPath.add(position);
          // send each new location to the WebView to extend the path polyline
          _leafletMapHelper.goToLocation(position);
          _leafletMapHelper.addPathPoint(position);
        });
  }

  @override
  void initState() {
    super.initState();
    _initLocation();

    // Initialize the controller and load the local HTML asset from `assets/leaflet/index.html`.
    _webviewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      // Track when the page finishes loading so we don't call JS too early
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (url) {
            _leafletMapHelper = LeafletMapHelper(
              webViewController: _webviewController,
              isReady: true,
              showError: (message) => ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(message))),
            );
            _leafletMapHelper.isReady = true;
          },
        ),
      )
      // Use loadFlutterAsset to load a packaged Flutter asset (index.html)
      ..loadFlutterAsset('assets/leaflet/index.html');
  }

  @override
  void dispose() {
    _locationSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: _webviewController),
      appBar: AppBar(title: Text("Testing Map")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (currentPosition != null) {
            _leafletMapHelper.goToLocation(currentPosition!);
          }
        },
        child: Icon(Icons.public),
      ),
    );
  }
}
