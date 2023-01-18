import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TaxPage extends StatefulWidget {
  final String apptitle;
  const TaxPage({Key? key, required this.apptitle}) : super(key: key);

  @override
  State<TaxPage> createState() => _TaxPageState();
}

class _TaxPageState extends State<TaxPage> {
  final Set<Marker> _markers = {};
  @override
  // ignore: override_on_non_overriding_member
  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        Marker(
            markerId: const MarkerId('id-1'),
            position: const LatLng(-15.37157456162755, 28.393559412907944),
            icon: BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueGreen,
            ),
            // ignore: prefer_const_constructors
            infoWindow: InfoWindow(
              title: 'Zambia Revenue Authority',
              snippet: 'Tax Payments',
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
              target: LatLng(-15.37157456162755, 28.393559412907944),
              zoom: 18,
            ),
          ),
        ],
      ),
    );
  }
}
