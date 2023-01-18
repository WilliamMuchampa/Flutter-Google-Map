// ignore_for_file: override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GarbagePage extends StatefulWidget {
  final String apptitle;
  const GarbagePage({Key? key, required this.apptitle}) : super(key: key);

  @override
  State<GarbagePage> createState() => _GarbagePageState();
}

class _GarbagePageState extends State<GarbagePage> {
  final Set<Marker> _markers = {};
  @override
  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        Marker(
            markerId: const MarkerId('id-1'),
            position: const LatLng(-15.365093794827228, 28.399033087016115),
            icon: BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueGreen,
            ),
            // ignore: prefer_const_constructors
            infoWindow: InfoWindow(
              title: 'Twin Care',
              snippet: 'Garbage payments',
            )),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(widget.apptitle),
      ),
      body: Stack(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          GoogleMap(
            onMapCreated: _onMapCreated,
            mapType: MapType.normal,
            markers: _markers,
            initialCameraPosition: const CameraPosition(
              target: LatLng(-15.365093794827228, 28.399033087016115),
              zoom: 18,
            ),
          ),
        ],
      ),
    );
  }
}
