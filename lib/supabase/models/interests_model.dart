class InterestsModel {
  int? id;
  String? createdAt;
  int? categoryId;
  String? userId;

  InterestsModel({this.id, this.createdAt, this.categoryId, this.userId});

  InterestsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    createdAt = json['created_at'] as String;
    categoryId = json['categoryId'] as int;
    userId = json['userId'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.categoryId != null) {
      data['categoryId'] = this.categoryId;
    }
    if (this.userId != null) {
      data['userId'] = this.userId;
    }
    return data;
  }
}
