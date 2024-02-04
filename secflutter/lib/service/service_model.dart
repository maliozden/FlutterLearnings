class postModel {
  int? userId;
  int? id;
  String? title;
  String? content;

  postModel({this.userId, this.id, this.title, this.content});

  postModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.content;
    return data;
  }
}
