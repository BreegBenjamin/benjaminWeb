import 'package:benjamin_web/models/projects_model.dart';
import 'package:http/http.dart' as http;

import '../models/card_skill_model.dart';
import '../settings/constants.dart';

class AppModelsController {
  static Future<List<CardSkillModel>> getSkillsModels() async {
    try {
      final response = await http.get(Uri.parse(Constants.urlApiSkills));
      if (response.statusCode == 200) {
        List<CardSkillModel> data = cardSkillModelFromJson(response.body);
        return data;
      } else {
        return [];
      }
    } catch (error) {
      return [];
    }
  }

  static Future<List<ProjectsModel>> getProjectsModel() async {
    try {
      final response = await http.get(Uri.parse(Constants.urlApiProject));
      if (response.statusCode == 200) {
        List<ProjectsModel> data = projectsModelFromJson(response.body);
        return data;
      } else {
        return [];
      }
    } catch (error) {
      return [];
    }
  }
}
