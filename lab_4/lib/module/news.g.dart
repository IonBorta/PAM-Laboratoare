// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

News _$NewsFromJson(Map<String, dynamic> json) => News(
      json['cover'] as String,
      json['title'] as String,
      json['category'] as String,
      Portal.fromJson(json['portal'] as Map<String, dynamic>),
      json['likes'] as int,
      json['comments'] as int,
    );

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'cover': instance.cover,
      'title': instance.title,
      'category': instance.category,
      'portal': instance.portal,
      'likes': instance.likes,
      'comments': instance.comments,
    };
