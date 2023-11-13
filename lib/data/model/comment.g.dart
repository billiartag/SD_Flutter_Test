// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
      id: json['id'] as int,
      author_id: json['author_id'] as int,
      post_id: json['post_id'] as int,
      comment: json['comment'] as String,
      publish_date: DateTime.parse(json['publish_date'] as String),
      update_date: DateTime.parse(json['update_date'] as String),
      status: json['status'] as int,
    );

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
      'id': instance.id,
      'author_id': instance.author_id,
      'post_id': instance.post_id,
      'comment': instance.comment,
      'publish_date': instance.publish_date.toIso8601String(),
      'update_date': instance.update_date.toIso8601String(),
      'status': instance.status,
    };
