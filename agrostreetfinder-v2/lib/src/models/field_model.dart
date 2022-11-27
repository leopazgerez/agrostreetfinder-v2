import 'package:agrostreetfinder/src/models/crop_model.dart';
import 'package:agrostreetfinder/src/models/type_production_model.dart';

class FieldModel {
  int id;
  double? hectares;
  TypeProductionModel? typeProduction;
  CropModel? crop;
  String? typeRodeo;

  FieldModel(
      this.hectares,
      this.typeProduction,
      this.crop,
      this.id,
      this.typeRodeo);

  Map<String, dynamic> toJson(){
    return {
      'id' : id,
      'hectares' : hectares,
      'typeProduction' : typeProduction,
      'crop' : crop,
      'typeRodeo' : typeRodeo
    };
  }

  FieldModel.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      hectares = json['hectares'],
      typeProduction = json['typeProduction'],
      crop = json['crop'],
      typeRodeo = json['typeRodeo'];
}