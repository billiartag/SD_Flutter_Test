// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      id: json['id'] as int,
      author_id: json['author_id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      publish_date: DateTime.parse(json['publish_date'] as String),
      update_date: DateTime.parse(json['update_date'] as String),
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
      'author_id': instance.author_id,
      'title': instance.title,
      'content': instance.content,
      'publish_date': instance.publish_date.toIso8601String(),
      'update_date': instance.update_date.toIso8601String(),
    };
