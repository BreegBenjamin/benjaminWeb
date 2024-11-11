import 'dart:convert';

List<CardSkillModel> cardSkillModelFromJson(String str) =>
    List<CardSkillModel>.from(
        json.decode(str).map((x) => CardSkillModel.fromJson(x)));

String cardSkillModelToJson(List<CardSkillModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CardSkillModel {
  double countPorcent;
  String? imageSource;
  String? subtitle;
  String? title;

  CardSkillModel({
    required this.countPorcent,
    required this.imageSource,
    required this.subtitle,
    required this.title,
  });

  factory CardSkillModel.fromJson(Map<String, dynamic> json) => CardSkillModel(
        countPorcent: json["countPorcent"],
        imageSource:
            'https://firebasestorage.googleapis.com/v0/b/webecajar.appspot.com/o/web-icons%2F${json["imageSource"]}',
        subtitle: json["subtitle"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "countPorcent": countPorcent,
        "imageSource": imageSource,
        "subtitle": subtitle,
        "title": title,
      };
}
