import 'dart:async';

import 'package:iti_training/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';

class MapScreen extends StatefulWidget {
  Geo userLocation;

  MapScreen({this.userLocation});

  @override
  State<MapScreen> createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {
  Completer<GoogleMapController> _controller = Completer();

  CameraPosition initialLocation;

  static final CameraPosition _kLake = CameraPosition(
      target: LatLng(37.43296265331129, -122.08832357078792),
      zoom: 19.151926040649414);

  @override
  void initState() {
    super.initState();
    initialLocation = CameraPosition(
      target: LatLng(
        double.parse(widget.userLocation.lat),
        double.parse(widget.userLocation.lng),
      ),
      zoom: 14.4746,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: initialLocation,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: openLocation,
          label: Text('please open my location'),
          icon: Icon(Icons.directions_boat)),
    );
  }

  openLocation() {
    MapsLauncher.launchCoordinates(
      double.parse(widget.userLocation.lat),
      double.parse(widget.userLocation.lng),
    );
  }
}
