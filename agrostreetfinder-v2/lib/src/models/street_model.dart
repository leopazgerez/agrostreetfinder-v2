import 'package:agrostreetfinder/src/models/point_model.dart';

class StreetModel {
  String name;
  List<PointModel>? points;
  String? description;

  StreetModel({required this.name, this.description, this.points});

  Map<String, dynamic> toJson(){
    return {
      'name' : name,
      'points' : points,
      'description' : description
    };
  }

  StreetModel.fromJson(Map<String, dynamic> json)
    : name = json['name'],
      points = json['points'],
      description = json['description'];

}