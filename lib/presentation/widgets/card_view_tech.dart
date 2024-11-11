import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controllers/app_models_controller.dart';
import '../../models/card_skill_model.dart';

class CardViewTech extends StatelessWidget {
  const CardViewTech({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: FutureBuilder<List<CardSkillModel>>(
          future: AppModelsController.getSkillsModels(),
          builder: (context, AsyncSnapshot<List<CardSkillModel>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(backgroundColor: Colors.blue),
              );
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final cardSkill = snapshot.data![index];
                  return Container(
                    height: 90,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 2,
                          offset: const Offset(0, 2),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(1),
                    ),
                    child: buildListTileChild(cardSkill),
                  );
                },
              );
            } else {
              return const Center(child: Text('No items available'));
            }
          },
        ),
      ),
    );
  }

  Widget buildListTileChild(CardSkillModel skill) {
    return ListTile(
      leading: SizedBox(
        height: 50,
        width: 50,
        child: SvgPicture.network(
          skill.imageSource!,
          placeholderBuilder: (context) =>
              const CircularProgressIndicator(backgroundColor: Colors.blue),
        ),
      ),
      title: Text(
        skill.title!,
        style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(skill.subtitle!, style: GoogleFonts.roboto()),
      trailing: CircularProgressIndicator(
        value: skill.countPorcent,
        strokeWidth: 4.0,
        backgroundColor: Colors.grey[300],
        valueColor: generatorRandomColor(),
      ),
      onTap: () {},
    );
  }

  AlwaysStoppedAnimation<Color> generatorRandomColor() {
    final random = Random();
    var rColor = Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );

    return AlwaysStoppedAnimation<Color>(rColor);
  }
}
