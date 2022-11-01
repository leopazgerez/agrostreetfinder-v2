import 'dart:async';
import 'dart:collection';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import '../../models/lot_model.dart';
import '../../models/point_model.dart';

class MapPageComponent extends StatefulWidget {
  final List<PointModel>? points;
  final List<LotModel> lots;
  const MapPageComponent({Key? key, this.points, required this.lots})
      : super(key: key);

  @override
  State<MapPageComponent> createState() => _MapPageComponentState();
}

class _MapPageComponentState extends State<MapPageComponent> {
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-25.4401138, -63.8570852),
    zoom: 14.4746,
  );
  final Set<Marker> _markers = {};
  final Set<Polygon> _polygon = {};
  final List<LatLng> _points = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var point in widget.lots) {
      for (int points = 0; points < point.points.length; points++) {
        _markers.add(Marker(
            markerId: MarkerId(points.toString()),
            position: LatLng(point.points[points].latitude,
                point.points[points].longitude),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueRose),
            onTap: () {}));

        _points.add(LatLng(point.points[points].latitude,
            point.points[points].longitude));
      }
    }
    for (int lots = 0; lots < widget.lots.length; lots++) {
      var polygon = Polygon(
          polygonId: PolygonId(widget.lots[lots].id.toString()),
          points: _points,
          fillColor: Colors.green.shade200,
          strokeColor: Colors.green,
          strokeWidth: 3,
          onTap: () {});
      _polygon.add(polygon
          // Polygon(
          // polygonId: PolygonId(widget.lots[lots].id.toString()),
          // points: List<LatLng>,
          // fillColor: Colors.green.shade200,
          // strokeColor: Colors.green,
          // strokeWidth: 3,
          // onTap: () {})
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GoogleMap(
        myLocationButtonEnabled: true,
        markers: Set.from(_markers),
        mapType: MapType.hybrid,
        zoomControlsEnabled: false,
        initialCameraPosition: _kGooglePlex,
        polygons: _polygon,
        compassEnabled: true,
      ),
    );
  }
}
