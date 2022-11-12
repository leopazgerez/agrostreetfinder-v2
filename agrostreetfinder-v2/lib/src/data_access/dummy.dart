import 'package:agrostreetfinder/src/models/field_model.dart';
import 'package:agrostreetfinder/src/models/lot_model.dart';

import '../interfaces/data_access.dart';
import '../models/point_model.dart';

class DummyData implements IDataAccess{
  DummyData();

  void addFieldModel(FieldModel fieldModel) {
  }

  @override
  List<FieldModel> getFieldModel() {
    return [
      FieldModel(1000,'Agricola', 'Soja', 1, ''),
      FieldModel(1000,'Agricola', 'Poroto', 2, ''),
      FieldModel(1000,'Agricola', 'Garbanzo', 3, ''),
      FieldModel(1000,'Agricola', 'Maiz', 4, ''),
      FieldModel(1000,'Agricola', 'Sorgo', 5, ''),
      FieldModel(1000,'Agricola', 'Alfalfa', 6, ''),
    ];
  }

  @override
  List<LotModel> getLotModel(){
    return [
      LotModel(id: 1, name: 'A1', crop: 'Maiz', points: [
          PointModel(id: 1,latitude: -25.426389, longitude: -63.857672),
          PointModel(id: 2,latitude: -25.418478, longitude: -63.855872),
          PointModel(id: 3,latitude: -25.419983, longitude: -63.847344),
          PointModel(id: 4,latitude: -25.427906, longitude: -63.848911),
          PointModel(id: 5,latitude: -25.426389, longitude: -63.857672),
          ]),
      LotModel(id: 2, name: 'A2', crop: 'Soja', points: [
          PointModel(id: 6,latitude: -25.428331, longitude: -63.846767),
          PointModel(id: 7,latitude: -25.428564, longitude: -63.844933),
          PointModel(id: 8,latitude: -25.427411, longitude: -63.843322),
          PointModel(id: 9,latitude: -25.426481, longitude: -63.841939),
          PointModel(id: 10,latitude: -25.426531, longitude: -63.840678),
          PointModel(id: 11,latitude: -25.421436, longitude: -63.839553),
          PointModel(id: 12,latitude: -25.420131, longitude: -63.846911),
          PointModel(id: 13,latitude: -25.423567, longitude: -63.847692),
          PointModel(id: 14,latitude: -25.427831, longitude: -63.848669),
          ]),
      LotModel(id: 3, name: 'A3', crop: 'Sesamo', points: [
        PointModel(id: 15,latitude: -25.419903, longitude: -63.846819),
        PointModel(id: 16,latitude: -25.410989, longitude: -63.844956),
        PointModel(id: 17,latitude: -25.412194, longitude: -63.837544),
        PointModel(id: 18,latitude: -25.421181, longitude: -63.839517),
      ]),
      LotModel(id: 4, name: 'A4', crop: 'Algodon', points: [
        PointModel(id: 18,latitude: -25.419825, longitude: -63.847322),
        PointModel(id: 19,latitude: -25.410811, longitude: -63.845403),
        PointModel(id: 20,latitude: -25.409275, longitude: -63.853836),
        PointModel(id: 21,latitude: -25.418422, longitude: -63.855842),
      ]),
    ];
  }

  @override
  List<PointModel> getPointModel(){
    return [
      PointModel(id: 1,latitude: -25.424583, longitude: -63.844483),
      PointModel(id: 2,latitude: -25.416536, longitude: -63.842308),
      PointModel(id: 3,latitude: -25.415111, longitude: -63.850889),
      PointModel(id: 4,latitude: -25.423594, longitude: -63.852553),
    ];
  }

  @override
  void deleteField(FieldModel fieldModel) {
  }

  @override
  void deleteLot(LotModel lotModel) {
  }

  @override
  void loadField(FieldModel fieldModel) {
  }

  @override
  void loadLot(LotModel lotModel) {
  }

  @override
  void modifyField(FieldModel fieldModel) {
  }

  @override
  void modifyLot(LotModel lotModel) {
  }

  @override
  void showField(FieldModel fieldModel) {
  }

  @override
  void showLot(LotModel lotModel) {
  }
}
