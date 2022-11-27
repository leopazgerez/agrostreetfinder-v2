class TypeProductionModel{
  String name;
  TypeProductionModel({required this.name});

  Map<String , dynamic> toJson(){
    return {
      'name' : name
    };
  }

  TypeProductionModel.fromJson(Map<String, dynamic> json)
    : name = json['name'];
}
