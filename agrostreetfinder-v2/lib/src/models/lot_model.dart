import 'package:agrostreetfinder/src/models/point_model.dart';

class LotModel {
  int id;
  String name;
  double? hectareas;
  String? typeProduction;
  String? crop;
  String? typeRodeo;
  List<PointModel> points;

  LotModel({
      required this.id, required this.name , this.hectareas, this.typeProduction, this.crop, this.typeRodeo, required this.points});
}