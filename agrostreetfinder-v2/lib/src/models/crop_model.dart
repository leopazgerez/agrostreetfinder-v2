class CropModel{
  String? name;
  String? variety;

  CropModel({this.name, this.variety});

  Map<String,dynamic> toJason(){
    return {
      'name' : name,
      'variety' : variety
    };
  }

  CropModel.fromJson(Map<String, dynamic> json)
    :   name = json['name'],
        variety = json['variety'];
}
