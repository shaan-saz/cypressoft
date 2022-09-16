import 'dart:convert';

import 'package:isar/isar.dart';

part 'album.g.dart';

@Collection()
class Album {
  Album({
    required this.userId,
    required this.id,
    required this.title,
  });
  factory Album.fromJson(Map<String, dynamic> json) => Album(
        userId: json['userId'] as int,
        id: json['id'] as int,
        title: json['title'] as String,
      );

  factory Album.fromRawJson(String str) =>
      Album.fromJson(json.decode(str) as Map<String, dynamic>);

  int userId;
  int id;
  String title;

  Album copyWith({
    int? userId,
    int? id,
    String? title,
  }) =>
      Album(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title,
      );

  String toRawJson() => json.encode(toJson());

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'id': id,
        'title': title,
      };
}
