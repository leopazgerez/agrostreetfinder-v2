import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import '../../models/lot_model.dart';
import '../../models/point_model.dart';
// ignore_for_file: must_be_immutable, non_constant_identifier_names
class MapPageComponent extends StatefulWidget {
  final List<PointModel>? points;
  final List<LotModel>? lots;
   const MapPageComponent({Key? key, this.points, this.lots})
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
  late Set<Marker> _markers = {};
  late Set<Polygon> _polygon = {};


  @override
  void initState() {
    super.initState();
    // for (int points = 0; points < widget.points!.length; points++) {
    //   _markers.add(Marker(
    //       markerId: MarkerId(points.toString()),
    //       position: LatLng(widget.points![points].latitude,
    //           widget.points![points].longitude),
    //       icon: BitmapDescriptor.defaultMarkerWithHue(
    //           BitmapDescriptor.hueRose),
    //       onTap: () {}));
    // }
    _markers = _setMarker(widget.points);
    _polygon = _setLot(widget.lots);
    print('La cantidad de poligonos es ${_polygon.length}');
      // for (int lot = 0; lot < widget.lots!.length; lot++) {
      //   _polygon = setPolygon(setListLatLng(widget.lots![lot]));
      //   print('Lote ${widget.lots![lot].name} con ${_polygon.length} puntos');
      // }

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
  Set<Marker> _setMarker(List<PointModel>? points){
    Set<Marker> markers = {};
    if(points != null){
      for (int point = 0; point < points.length; point++) {
        markers.add(Marker(
            markerId: MarkerId(points.toString()),
            position: LatLng(points[point].latitude,
               points[point].longitude),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueRose),
            onTap: () {}));
      }
    }
    return markers;
  }

  Set<Polygon> _setLot(List<LotModel>? lots){
    Set<Polygon> polygon = {};
    if(lots != null) {
        for (int lot = 0; lot < lots.length; lot++) {
          polygon = setPolygon(setListLatLng(lots[lot]));
          print('Lote ${lots[lot].name} con ${polygon.length} puntos');
        }
    }
    return polygon;
  }

  List<LatLng> setListLatLng(LotModel lot){
    List<LatLng>listLotPoints = [];
    for (int points = 0 ; points < lot.points.length ; points++){
      listLotPoints.add(LatLng(lot.points[points].latitude, lot.points[points].longitude));
    }
    return listLotPoints;
  }

  Set<Polygon> setPolygon(List<LatLng> listLotPoints){
    Set<Polygon> polygon = {};
    for (int lot = 0 ; lot < listLotPoints.length; lot++){
      polygon.add((Polygon(polygonId: PolygonId(listLotPoints[lot].toString()),
          points: listLotPoints,
          fillColor: Colors.green.shade200,
          strokeWidth: 3,
          strokeColor: Colors.green
      )));
      // print(polygon.length);
    }
    return polygon;
  }


  @override
  Widget build(BuildContext context) {
    if (_polygon.isNotEmpty) {
      return SizedBox(
        child: GoogleMap(
          myLocationButtonEnabled: true,
          // markers: _markers,
          mapType: MapType.hybrid,
          zoomControlsEnabled: false,
          initialCameraPosition: _kGooglePlex,
          polygons: _polygon,
        ),
      );
    } else {
      return SizedBox(
        child: GoogleMap(
          myLocationButtonEnabled: true,
          markers: _markers,
          mapType: MapType.hybrid,
          zoomControlsEnabled: false,
          initialCameraPosition: _kGooglePlex,
        ),
      );
    }
  }
}
