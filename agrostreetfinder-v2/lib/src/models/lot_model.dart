import 'package:agrostreetfinder/src/models/point_model.dart';
import 'package:agrostreetfinder/src/models/type_production_model.dart';

class LotModel {
  int id;
  String name;
  double? hectares;
  TypeProductionModel? typeProduction;
  String? crop;
  String? typeRodeo;
  List<PointModel> points;

  LotModel(
      {required this.id,
      required this.name,
      this.hectares,
      this.typeProduction,
      this.crop,
      this.typeRodeo,
      required this.points});

  // to insert the data into db must be a map
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "hectares": hectares,
      "typeProduction": typeProduction,
      "typeRodeo": typeRodeo,
      "crop": crop,
      "points": List<dynamic>.from(points.map((x) => x)),
    };
  }

  LotModel.fromJson(Map<String, dynamic> json)
      :   id = json["id"],
        name = json["name"],
        hectares = json["hectares"],
        typeProduction = json["typeProduction"],
        typeRodeo = json["typeRodeo"],
        points = json["points"];

//    ES EQUIVALENTE A :

// factory LotModel.fromJson(Map<String, dynamic> json) {
//   return LotModel(
//       id: json["id"],
//       name: json["name"],
//       hectares: json["hectares"],
//       typeProduction: json["typeProduction"],
//       typeRodeo: json["typeRodeo"],
//       points: json["points"]);
// }
}



