class PointModel {
  int id;
  double latitude;
  double longitude;

  PointModel(
      {required this.latitude, required this.longitude, required this.id});

  Map<String, dynamic> toJson(){
      return {
          'id' : id,
          'latitude' : latitude,
          'longitude' : longitude
      };
  }
}
