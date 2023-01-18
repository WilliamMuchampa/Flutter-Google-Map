// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class WaterPage extends StatefulWidget {
  final String apptitle;

  const WaterPage({Key? key, required this.apptitle}) : super(key: key);

  @override
  State<WaterPage> createState() => _WaterPageState();
}

class _WaterPageState extends State<WaterPage> {
  final Set<Marker> _markers = {};
  @override
  // ignore: override_on_non_overriding_member
  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        Marker(
            markerId: const MarkerId('id-1'),
            position: const LatLng(-15.375042789717387, 28.38197016317529),
            icon: BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueGreen,
            ),
            infoWindow: InfoWindow(
              title: 'Lusaka Water and Sewarage Company',
              snippet: 'Water Bills Payments',
            )),
      );

      // _markers.add(
      //   Marker(
      //     markerId: MarkerId('id-2'),
      //     position: LatLng(-17.26213431357389, 27.459647023500242),
      //     icon: BitmapDescriptor.defaultMarkerWithHue(
      //       BitmapDescriptor.hueBlue,
      //     ),
      //     infoWindow: InfoWindow(
      //       title: 'Shamumu Enterprise',
      //       snippet: 'Water Services',
      //     ),
      //   ),
      // );
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
              target: LatLng(-15.375042789717387, 28.38197016317529),
              zoom: 18,
            ),
          ),
        ],
      ),
    );
  }
}
