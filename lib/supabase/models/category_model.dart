class CategoryModel {
  int? id;
  String? createdAt;
  String? name;
  String? image;

  CategoryModel({this.id, this.createdAt, this.name, this.image});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    createdAt = json['created_at'] as String;
    name = json['name'] as String;
    image = json['image'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.image != null) {
      data['image'] = this.image;
    }
    return data;
  }
}
