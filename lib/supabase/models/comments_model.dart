class CommentsModel {
  int? id;
  String? createdAt;
  int? postId;
  String? userId;
  String? comment;

  CommentsModel(
      {this.id, this.createdAt, this.postId, this.userId, this.comment});

  CommentsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    createdAt = json['created_at'] as String;
    postId = json['postId'] as int;
    userId = json['userId'] as String;
    comment = json['comment'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.postId != null) {
      data['postId'] = this.postId;
    }
    if (this.userId != null) {
      data['userId'] = this.userId;
    }
    if (this.comment != null) {
      data['comment'] = this.comment;
    }
    return data;
  }
}
