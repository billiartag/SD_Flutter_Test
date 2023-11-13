import 'package:json_annotation/json_annotation.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  int id;
  int author_id;
  String title;
  String content;
  DateTime publish_date;
  DateTime update_date;

  Post({
    required this.id,
    required this.author_id,
    required this.title,
    required this.content,
    required this.publish_date,
    required this.update_date,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}
