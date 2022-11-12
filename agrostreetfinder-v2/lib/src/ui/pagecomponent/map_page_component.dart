import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import '../../models/lot_model.dart';
import '../../models/point_model.dart';
// ignore_for_file: must_be_immutable, non_constant_identifier_names
class MapPageComponent extends StatefulWidget {
  late List<PointModel>? points;
  late List<LotModel> lots;
   MapPageComponent({Key? key, this.points, required this.lots})
      : super(key: key);

  @override
  State<MapPageComponent> createState() => _MapPageComponentState();
}

class _MapPageComponentState extends State<MapPageComponent> {
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-25.415578, -63.838331),
    zoom: 13.5,
    // 14.4746,
  );
  final Set<Marker> _markers = {};
  final List<LatLng> a1 = [
    const LatLng(-25.426389, -63.857672),
    const LatLng(-25.418478, -63.855872),
    const LatLng(-25.419983,-63.847344),
    const LatLng(-25.427906, -63.848911),
  ];
  final List<LatLng> a2 = [
    // const LatLng(-25.419825, -63.847322),
    // const LatLng(-25.410811, -63.845403),
    // const LatLng(-25.409275, -63.853836),
    // const LatLng(-25.418422, -63.855842),
  ];
  final List<LatLng> a3 = [
    // const LatLng(-25.419903, -63.846819),
    // const LatLng(-25.410989, -63.844956),
    // const LatLng(-25.412194,  -63.837544),
    const LatLng(-25.421181,  -63.839517),
  ];
  final List<LatLng> a4 = [
    // const LatLng(-25.428331, -63.846767),
    // const LatLng(-25.428564,  -63.844933),
    // const LatLng(-25.427411,  -63.843322),
    // const LatLng(-25.426481,  -63.841939),
    // const LatLng(-25.426531,  -63.840678),
    // const LatLng(-25.421436,  -63.839553),
    // const LatLng(-25.420131,  -63.846911),
    // const LatLng(-25.423567,  -63.847692),
    // const LatLng(-25.427831, -63.848669),
  ];
  late Set<Polygon> _polygon;


  @override
  void initState() {
    super.initState();
    for (int points = 0; points < widget.points!.length; points++) {
      _markers.add(Marker(
          markerId: MarkerId(points.toString()),
          position: LatLng(widget.points![points].latitude,
              widget.points![points].longitude),
          icon: BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueRose),
          onTap: () {}));
    }
    for (int lot = 0; lot < widget.lots!.length; lot++) {
      _polygon = setPolygon(setListLtnLng(widget.lots[lot]));
      print('Lote con ${_polygon.length} puntos');
    }

    // _polygon.add(Polygon(polygonId: const PolygonId('value'),
    // points: a1,
    // fillColor: Colors.green.shade200,
    // strokeWidth: 3,
    //   strokeColor: Colors.green
    // ));
    // _polygon.add(Polygon(polygonId: const PolygonId('value'),
    // points: a2,
    // fillColor: Colors.green.shade200,
    // strokeWidth: 3,
    //   strokeColor: Colors.green
    // ));
    // _polygon.add(Polygon(polygonId: const PolygonId('value'),
    // points: a3,
    // fillColor: Colors.green.shade200,
    // strokeWidth: 3,
    //   strokeColor: Colors.green
    // ));
    // _polygon.add(Polygon(polygonId: const PolygonId('value'),
    // points: a4,
    // fillColor: Colors.green.shade200,
    // strokeWidth: 3,
    //   strokeColor: Colors.green
    // ));
  }
  List<LatLng> setListLtnLng(LotModel lot){
    List<LatLng>listLotPoints = [];
    for (int points = 0 ; points < lot.points.length ; points++){
      listLotPoints.add(LatLng(lot.points[points].latitude, lot.points[points].longitude));
    }
    return listLotPoints;
  }

  Set<Polygon> setPolygon(List<LatLng> listLot){
    Set<Polygon> polygon = {};
    for (int lot = 0 ; lot < listLot.length; lot++){
      polygon.add((Polygon(polygonId: PolygonId(listLot[lot].toString()),
          points: listLot,
          fillColor: Colors.green.shade200,
          strokeWidth: 3,
          strokeColor: Colors.green
      )));
    }
    return polygon;
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GoogleMap(
        myLocationButtonEnabled: true,
        markers: _markers,
        mapType: MapType.hybrid,
        zoomControlsEnabled: false,
        initialCameraPosition: _kGooglePlex,
        polygons: _polygon,
      ),
    );
  }
}
