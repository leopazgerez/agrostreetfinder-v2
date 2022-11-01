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
      LotModel(id: 2, name: 'A2', crop: 'Maiz', points: [
          PointModel(id: 6,latitude: -25.428011, longitude: -63.848483),
          PointModel(id: 7,latitude: -25.428592, longitude: -63.844956),
          PointModel(id: 8,latitude: -25.426508, longitude: -63.841892),
          PointModel(id: 9,latitude: -25.427906, longitude: -63.848911),
          PointModel(id: 10,latitude: -25.426533, longitude: -63.840642),
          PointModel(id: 11,latitude: -25.421442, longitude: -63.839464),
          PointModel(id: 12,latitude: -25.420161, longitude: -63.846939),
          PointModel(id: 13,latitude: -25.427947, longitude: -63.848639),
          ]),
      // LotModel(id: 2, name: 'A2', crop: 'Maiz'),
      // LotModel(id: 3, name: 'A3', crop: 'Maiz'),
      // LotModel(id: 4, name: 'A4', crop: 'Maiz'),
      // LotModel(id: 5, name: 'A5', crop: 'Maiz'),
      // LotModel(id: 6, name: 'A6', crop: 'Maiz'),
      // LotModel(id: 7, name: 'A7', crop: 'Maiz'),
      // LotModel(id: 8, name: 'A8', crop: 'Maiz'),
      // LotModel(id: 9, name: 'A9', crop: 'Maiz'),
      // LotModel(id: 10, name: 'A10', crop: 'Maiz'),
      // LotModel(id: 11, name: 'A11', crop: 'Maiz'),
      // LotModel(id: 12, name: 'A12', crop: 'Maiz'),
      // LotModel(id: 13, name: 'A13', crop: 'Maiz'),
      // LotModel(id: 14, name: 'A14', crop: 'Maiz'),
      // LotModel(id: 15, name: 'A15', crop: 'Maiz'),
      // LotModel(id: 16, name: 'A16', crop: 'Maiz'),
      // LotModel(id: 17, name: 'A17', crop: 'Maiz'),
    ];
  }

  @override
  List<PointModel> getPointModel(){
    return [
      PointModel(id: 1,latitude: -25.4232047, longitude: -63.8405361),
      PointModel(id: 2,latitude: -25.4238239, longitude: -63.8448129),
      PointModel(id: 3,latitude: -25.4207018, longitude: -63.8572013),
      PointModel(id: 4,latitude: -25.4155529, longitude: -63.855015),
      PointModel(id: 5,latitude: -25.4155528, longitude: -63.8512873),
      PointModel(id: 6,latitude: -25.4176122, longitude: -63.842231),
      PointModel(id: 7,latitude: -25.4183985, longitude: -63.8328069),
      PointModel(id: 8,latitude: -25.4251991, longitude: -63.8359817),
      PointModel(id: 9,latitude: -25.4216254, longitude: -63.8293666),
      PointModel(id: 10,latitude: -25.4191173, longitude: -63.8302906),
      PointModel(id: 11,latitude: -25.4208852, longitude: -63.8219143),
      PointModel(id: 12,latitude: -25.4174295, longitude: -63.827233),
      PointModel(id: 13,latitude: -25.413372, longitude: -63.829874),
      PointModel(id: 14,latitude: -25.4120619, longitude: -63.83551),
      PointModel(id: 15,latitude: -25.4098289, longitude: -63.8432239),
      PointModel(id: 16,latitude: -25.4061193, longitude: -63.85371),
      PointModel(id: 17,latitude: -25.4087073, longitude: -63.8578195),
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
