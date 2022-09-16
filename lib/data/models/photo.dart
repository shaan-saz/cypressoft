import 'dart:convert';

import 'package:isar/isar.dart';

part 'photo.g.dart';

@Collection()
class Photo {
  Photo({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });
  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        albumId: json['albumId'] as int,
        id: json['id'] as int,
        title: json['title'] as String,
        url: json['url'] as String,
        thumbnailUrl: json['thumbnailUrl'] as String,
      );

  factory Photo.fromRawJson(String str) =>
      Photo.fromJson(json.decode(str) as Map<String, dynamic>);

  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Photo copyWith({
    int? albumId,
    int? id,
    String? title,
    String? url,
    String? thumbnailUrl,
  }) =>
      Photo(
        albumId: albumId ?? this.albumId,
        id: id ?? this.id,
        title: title ?? this.title,
        url: url ?? this.url,
        thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      );

  String toRawJson() => json.encode(toJson());

  Map<String, dynamic> toJson() => {
        'albumId': albumId,
        'id': id,
        'title': title,
        'url': url,
        'thumbnailUrl': thumbnailUrl,
      };
}
