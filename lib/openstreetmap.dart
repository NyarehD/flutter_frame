import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import "package:http/http.dart" as http;
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';

class Openstreetmap extends StatefulWidget {
  const Openstreetmap({super.key});

  @override
  State<Openstreetmap> createState() => _OpenstreetmapState();
}

class _OpenstreetmapState extends State<Openstreetmap> {
  final MapController _mapController = MapController();
  final Location _location = Location();
  final TextEditingController _locationController = TextEditingController();

  Widget _buildPolylineLayer(List<Polyline> polylines) {
    return PolylineLayer(
      polylines: polylines,
      hitNotifier: hitNotifier,
      minimumHitbox: 100,
    );
  }

  bool isLoading = true;
  LatLng? _destination;
  List<LatLng> _route = [];
  LatLng? _currentLocation;
  double? _currentHeading;
  String? _lastHit;
  // Keep the same LayerHitNotifier<Object> type to match the Layer API.
  final LayerHitNotifier<Object> hitNotifier = ValueNotifier(null);

  @override
  void initState() {
    super.initState();

    // Listen for hit events from layers (polylines) and extract the value.
    // hitNotifier.value will contain whatever was set as `hitValue` on the
    // polyline (in this file we set a Map there). We handle Map/List/other
    // gracefully and save a string representation to `_lastHit` for UI
    // feedback. We also clear the notifier value after handling so repeated
    // identical hits still trigger the listener.
    hitNotifier.addListener(() {
      final hit = hitNotifier.value;
      if (hit != null) {
        String display;
        try {
          if (hit is Map || hit is List) {
            display = jsonEncode(hit);
          } else {
            display = hit.toString();
          }
        } catch (e) {
          display = hit.toString();
        }

        // update on-screen text
        setState(() {
          _lastHit = display;
        });

        // quick feedback via snackbar
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Hit value: $display')),
        );

        // Clear the notifier value asynchronously so future identical hits
        // still notify the listener.
        Future.microtask(() => hitNotifier.value = null);
      }
    });

    _initializeLocation();
  }

  Future<void> _userCurrentLocation() async {
    if (_currentLocation != null) {
      _mapController.move(_currentLocation!, 18);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("CurrentLocationLayer not available")),
      );
    }
  }

  Future<void> fetchCoordinatesPoint(String location) async {
    final url = Uri.parse(
      "https://nominatim.openstreetmap.org/search?q=$location&format=json&limit=1",
    );

    final response = await http.get(url);
    if (response == 200) {
      final data = json.decode(response.body);

      if (data.isNotEmpty) {
        final let = double.parse(data[0]['lat']);
        final long = double.parse(data[0]['lon']);

        setState(() {
          _destination = LatLng(let, long);
        });

        await _fetchRoute();
      }
    }
  }

  Future<void> _fetchRoute() async {
    if (_currentLocation == null || _destination == null) return;

    final url = Uri.parse(
      "http://router.project-osrm.org/route/v1/driving/"
      '${_currentLocation!.latitude},${_currentLocation!.longitude};'
      '${_destination!.latitude},${_destination!.longitude}/overview=full&geometries=polyline',
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final geo = data['routes'][0]['geometry'];
      _decodePolyline(geo);
    }
  }

  void _decodePolyline(String encodedPolyline) async {
    PolylinePoints polylinePoints = PolylinePoints();
    List<PointLatLng> result = polylinePoints.decodePolyline(encodedPolyline);

    setState(() {
      _route = result
          .map((point) => LatLng(point.latitude, point.longitude))
          .toList();
    });
  }

  void errorMessage(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  Future<void> _initializeLocation() async {
    // if (!(await _check)) {
    //   return;
    // }
    _location.onLocationChanged.listen((LocationData locationData) {
      if (locationData.latitude != null && locationData.longitude != null) {
        setState(() {
          _currentLocation = LatLng(
            locationData.latitude!,
            locationData.longitude!,
          );
          _currentHeading = locationData.heading;
          isLoading = false;
        });
      }
    });
  }

  Future<bool> _check() async {
    bool serviceEnabled = await _location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await _location.requestService();
    } else {
      return false;
    }
    return serviceEnabled;
  }

  @override
  Widget build(BuildContext context) {
    // final points = [LatLng(0, 0), LatLng(90, 90), LatLng(45, 45)];
    final points = [
      LatLng(16.839860539640008, 96.12766546210900),
      LatLng(16.839483592498343, 96.12820967064495),
      LatLng(16.83944418434365, 96.12757595411307),
      LatLng(16.84006100669655, 96.12797157940011),
    ];
    final otherPoints = [
      LatLng(16.839860539640008, 96.12766546210900),
      LatLng(16.839483592848343, 96.12820967064495),
      LatLng(16.83944418484365, 96.12757595411307),
      LatLng(16.84006100784655, 96.12797157940011),
    ];

    return Scaffold(
      appBar: AppBar(title: Text("Open street"), toolbarOpacity: 0.2),
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: _currentLocation ?? LatLng(0, 0),
              initialZoom: 2,
              minZoom: 4,
              maxZoom: 100,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',

                // urlTemplate:
                // 'https://tiles.stadiamaps.com/tiles/outdoors/{z}/{x}/{y}@2x.png?api_key=1fd6443f-b5ea-4da1-8628-1f12916a36a0',
              ),
              CurrentLocationLayer(
                style: LocationMarkerStyle(
                  // marker: DefaultLocationMarker(
                  //   // child: Icon(Icons.abc, color: Colors.cyan),
                  //   child: Icon(Icons.location_on, color: Colors.cyan),
                  // ),
                  marker: Icon(Icons.location_on, color: Colors.cyan),
                  markerSize: Size(10, 10),
                  markerDirection: MarkerDirection.heading,
                ),
              ),
              if (_destination != null)
                MarkerLayer(
                  markers: [
                    Marker(
                      point: _destination!,
                      child: const Icon(Icons.location_city_sharp, size: 50),
                    ),
                  ],
                ),

              // if (_currentLocation != null &&
              //     _destination != null &&
              //     _route.isNotEmpty)
              //   PolylineLayer(
              //     polylines: [Polyline(points: _route, color: Colors.red)],
              //   ),
              PolylineLayer(
                polylines: [
                  Polyline(
                    points: points,
                    color: Colors.cyan,
                    hitValue: {"tesing": "testing"},
                  ),
                  // Polyline(points: otherPoints, color: Colors.yellow),
                ],
                hitNotifier: hitNotifier,
                minimumHitbox: 100,
              ),
            ],
          ),
          // small on-screen card to display last hit value (if any)
          if (_lastHit != null)
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: Card(
                color: Colors.black.withOpacity(0.65),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    _lastHit!,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          // Positioned(
          //   top: 0,
          //   right: 0,
          //   left: 0,
          //   bottom: 0,
          //   child: Padding(
          //     padding: const EdgeInsets.all(8),
          //     child: Row(
          //       children: [
          //         Expanded(child: TextField(controller: _locationController)),
          //         IconButton(
          //           onPressed: () {
          //             final location = _locationController.text.trim();
          //             if (location.isNotEmpty) {
          //               fetchCoordinatesPoint(location);
          //             }
          //           },
          //           icon: const Icon(Icons.search),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _userCurrentLocation,
        child: Icon(Icons.my_location, size: 30, color: Colors.white),
      ),
    );
  }
}
