// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'likeDislike.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LikeDislike _$LikeDislikeFromJson(Map<String, dynamic> json) => LikeDislike(
      id: json['id'] as int,
      author_id: json['author_id'] as int,
      post_id: json['post_id'] as int,
      comment_id: json['comment_id'] as int,
      type: json['type'] as int,
      publish_date: DateTime.parse(json['publish_date'] as String),
      status: json['status'] as int,
    );

Map<String, dynamic> _$LikeDislikeToJson(LikeDislike instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author_id': instance.author_id,
      'post_id': instance.post_id,
      'comment_id': instance.comment_id,
      'type': instance.type,
      'publish_date': instance.publish_date.toIso8601String(),
      'status': instance.status,
    };
