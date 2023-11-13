import 'package:json_annotation/json_annotation.dart';

part 'comment.g.dart';

@JsonSerializable()
class Comment {
  int id;
  int author_id;
  int post_id;
  String comment;
  DateTime publish_date;
  DateTime update_date;
  int status;

  Comment({
    required this.id,
    required this.author_id,
    required this.post_id,
    required this.comment,
    required this.publish_date,
    required this.update_date,
    required this.status,
  });

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);

  Map<String, dynamic> toJson() => _$CommentToJson(this);
}
