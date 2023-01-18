// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ElectricityPage extends StatefulWidget {
  final String apptitle;
  // ignore: use_key_in_widget_constructors
  const ElectricityPage({Key? key, required this.apptitle});

  @override
  State<ElectricityPage> createState() => _ElectricityPageState();
}

class _ElectricityPageState extends State<ElectricityPage> {
  final Set<Marker> _markers = {};
  @override
  // ignore: override_on_non_overriding_member
  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        Marker(
            markerId: const MarkerId('id-1'),
            position: const LatLng(-15.373574444635407, 28.383144926235538),
            icon: BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueGreen,
            ),
            infoWindow: InfoWindow(
              title: 'Chelstone Bazaar',
              snippet: 'Electricity Purchase',
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
              target: LatLng(-15.373574444635407, 28.383144926235538),
              zoom: 18,
            ),
          ),
        ],
      ),
    );
  }
}
