import 'package:json_annotation/json_annotation.dart';

part 'likeDislike.g.dart';

@JsonSerializable()
class LikeDislike {
  int id;
  int author_id;
  int post_id;
  int comment_id;
  int type;
  DateTime publish_date;
  int status;

  LikeDislike({
    required this.id,
    required this.author_id,
    required this.post_id,
    required this.comment_id,
    required this.type,
    required this.publish_date,
    required this.status,
  });

  factory LikeDislike.fromJson(Map<String, dynamic> json) =>
      _$LikeDislikeFromJson(json);

  Map<String, dynamic> toJson() => _$LikeDislikeToJson(this);
}
