// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DstvPage extends StatefulWidget {
  final String apptitle;
  const DstvPage({Key? key, required this.apptitle}) : super(key: key);

  @override
  State<DstvPage> createState() => _DstvPageState();
}

class _DstvPageState extends State<DstvPage> {
  final Set<Marker> _markers = {};
  @override
  // ignore: override_on_non_overriding_member
  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        Marker(
          markerId: const MarkerId('id-1'),
          position: const LatLng(-15.3668752881239, 28.402153046680795),
          icon: BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueGreen,
          ),
          infoWindow: InfoWindow(
            title: 'Manhattan Airways',
            snippet: 'dstv Subscription',
          ),
        ),
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
      //       snippet: 'dstv and gotv payments',
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
              target: LatLng(-15.3668752881239, 28.402153046680795),
              zoom: 15,
            ),
          ),
        ],
      ),
    );
  }
}
