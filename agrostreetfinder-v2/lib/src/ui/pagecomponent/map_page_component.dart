import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import '../../models/lot_model.dart';
import '../../models/point_model.dart';

class MapPageComponent extends StatefulWidget {
  final List<PointModel> points;
  final List<LotModel> lots;
  const MapPageComponent({Key? key, required this.points, required this.lots}) : super(key: key);

  @override
  State<MapPageComponent> createState() => _MapPageComponentState();
}

class _MapPageComponentState extends State<MapPageComponent> {

  Completer<GoogleMapController> controller = Completer();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-25.4401138, -63.8570852),
    zoom: 14.4746,
  );
  final Set<Marker> _markers = {};
  // final Set<Polyline> _polyline = {};
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < widget.points.length; i++) {
      _markers.add(
          Marker(
            markerId: MarkerId(i.toString()),
            position: LatLng(
                widget.points[i].latitude, widget.points[i].longitude),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueRose),
            infoWindow: InfoWindow(title: widget.lots[i].name),
            onTap: (){}
          )
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GoogleMap(
        markers: Set.from(_markers),
        mapType: MapType.hybrid,
        zoomControlsEnabled: false,
          initialCameraPosition: _kGooglePlex),
    );
  }
}
