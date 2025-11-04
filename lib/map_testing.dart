import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:webview_flutter/webview_flutter.dart'; //

class MapTesting extends StatefulWidget {
  const MapTesting({super.key});

  @override
  State<MapTesting> createState() => _MapTestingState();
}

String _jumpToGenerator(Position position) {
  return "window.map.jumpTo({center:[${position.longitude},${position.latitude}],zoom:14,bearing:0,pitch:0})";
}

String _customMarker() {
  return '''const el = document.createElement('div');
el.className = 'current-location-marker';
el.style.backgroundImage = 'url(https://yourdomain.com/location-icon.png)';
el.style.width = '40px';
el.style.height = '40px';
el.style.backgroundSize = 'cover';
el.style.borderRadius = '50%';
el.style.boxShadow = '0 0 5px rgba(0,0,0,0.3)';
''';
}

class _MapTestingState extends State<MapTesting> {
  Position? currentPosition;

  late final WebViewController _controller;
  late final StreamSubscription<Position> _locationSubscription;

  final String url =
      "https://api.maptiler.com/maps/base-v4/?key=cvn5QhfSt8UryswhffMn#0.1/32.13847/24.26893"; // Add your app url

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(url));

    _controller.runJavaScript("console.log(window.map)");
    // _controller.runJavaScript("console.log('testing')");

    Future.delayed(Duration(seconds: 5), () {
      _initLocation();
      List<String> positions = [
        "window.map.jumpTo({center:[${16.8399209},${96.1278907}],zoom:14,bearing:0,pitch:0})",
        "window.map.jumpTo({center:[${16.83920},${96.1278907}],zoom:14,bearing:0,pitch:0})",
        "window.map.jumpTo({center:[${16.40000},${96.1278907}],zoom:14,bearing:0,pitch:0})",
      ];
      // for (var item in positions) {
      Future.delayed(Duration(seconds: 10), () {
        _controller.runJavaScript(positions[0]);
      });

      Future.delayed(Duration(seconds: 20), () {
        _controller.runJavaScript(positions[1]);
      });
      Future.delayed(Duration(seconds: 30), () {
        _controller.runJavaScript(positions[2]);
      });
      // }
    });
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
          _controller.runJavaScript(_jumpToGenerator(position));
        });
  }

  void _currentLocation() {
    _controller.runJavaScript("maptilersdk.");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: _controller),
      appBar: AppBar(title: Text("Testing Map")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // if (currentPosition != null) {
          //   _controller.runJavaScript(_jumpToGenerator(currentPosition!));
          // }
        },
        child: Icon(Icons.public),
      ),
    );
  }
}
