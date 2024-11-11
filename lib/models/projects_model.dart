import 'dart:convert';

List<ProjectsModel> projectsModelFromJson(String str) =>
    List<ProjectsModel>.from(
        json.decode(str).map((x) => ProjectsModel.fromJson(x)));
String projectsModelToJson(List<ProjectsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProjectsModel {
  String description;
  String image;
  String link;
  String subtitle;
  String title;

  ProjectsModel({
    required this.description,
    required this.image,
    required this.link,
    required this.subtitle,
    required this.title,
  });

  factory ProjectsModel.fromJson(Map<String, dynamic> json) => ProjectsModel(
        description: json["description"],
        image: json["image"],
        link: json["link"],
        subtitle: json["subtitle"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "image": image,
        "link": link,
        "subtitle": subtitle,
        "title": title,
      };
}
