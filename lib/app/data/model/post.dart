class Post {
  late int id;
  late String title;
  late String body;

  Post({id, title, body});

  Post.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    data['name'] = title;
    data['body'] = body;

    return data;
  }
}
