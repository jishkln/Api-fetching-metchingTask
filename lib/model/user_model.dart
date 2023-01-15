import 'dart:convert';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

class DataModel {
  DataModel({
    this.hits,
  });

  List<Hit>? hits;

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        hits: List<Hit>.from(json["hits"]!.map((x) => Hit.fromJson(x))),
      );
}

class Hit {
  Hit({
    this.createdAt,
    this.title,
    this.url,
    this.author,
    this.points,
  });

  DateTime? createdAt;
  String? title;
  String? url;
  String? author;
  int? points;

  factory Hit.fromJson(Map<String, dynamic> json) => Hit(
        createdAt: DateTime.parse(json["created_at"]),
        title: json["title"],
        url: json["url"],
        author: json["author"],
        points: json["points"],
      );
}
