class PostsModel {
  int? id;
  String? createdAt;
  String? title;
  String? image;
  String? tags;
  String? content;
  String? publishedDate;
  String? addedBy;
  bool? isDraft;
  int? categoryId;
  String? description;

  PostsModel(
      {this.id,
      this.createdAt,
      this.title,
      this.image,
      this.tags,
      this.content,
      this.publishedDate,
      this.addedBy,
      this.isDraft,
      this.categoryId,
      this.description});

  PostsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    createdAt = json['created_at'] as String;
    title = json['Title'] as String;
    image = json['Image'] as String;
    tags = json['tags'] as String;
    content = json['Content'] as String;
    publishedDate = json['published_date'] as String;
    addedBy = json['addedBy'] as String;
    isDraft = json['isDraft'] as bool;
    categoryId = json['categoryId'] as int;
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.title != null) {
      data['Title'] = this.title;
    }
    if (this.image != null) {
      data['Image'] = this.image;
    }
    if (this.tags != null) {
      data['tags'] = this.tags;
    }
    if (this.content != null) {
      data['Content'] = this.content;
    }
    if (this.publishedDate != null) {
      data['published_date'] = this.publishedDate;
    }
    if (this.addedBy != null) {
      data['addedBy'] = this.addedBy;
    }
    if (this.isDraft != null) {
      data['isDraft'] = this.isDraft;
    }
    if (this.categoryId != null) {
      data['categoryId'] = this.categoryId;
    }
    if (this.description != null) {
      data['description'] = this.description;
    }
    return data;
  }
}
