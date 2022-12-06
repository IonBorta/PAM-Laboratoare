
import 'package:json_annotation/json_annotation.dart';
import 'package:lab4/module/portal.dart';

part 'news.g.dart';

@JsonSerializable()
class News{
  final String cover;
  final String title;
  final String category;
  final Portal portal;
  final int likes;
  final int comments;

  News(this.cover, this.title, this.category, this.portal, this.likes, this.comments);

  factory  News.fromJson( Map<String, dynamic> json ) => _$NewsFromJson(json);
  Map<String, dynamic> toJson() => _$NewsToJson(this);

}