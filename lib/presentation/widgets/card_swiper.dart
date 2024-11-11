import 'package:benjamin_web/models/projects_model.dart';
import 'package:benjamin_web/settings/constants.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controllers/app_models_controller.dart';
import 'home_projects_card.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text('Projects', style: GoogleFonts.pacifico(fontSize: 20)),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 2),
          height: 280,
          child: FutureBuilder(
              future: AppModelsController.getProjectsModel(),
              builder: (_, AsyncSnapshot<List<ProjectsModel>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child:
                        CircularProgressIndicator(backgroundColor: Colors.blue),
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                  return _buildData(snapshot.data!);
                } else {
                  return const Center(child: Text('No items available'));
                }
              }),
        ),
      ],
    );
  }

  Widget _buildData(List<ProjectsModel> projects) {
    return Swiper(
      itemCount: projects.length,
      itemBuilder: (BuildContext context, int index) {
        return HomeProjectsCard(index: index, project: projects[index]);
      },
      // configuration Swiper
      control: const SwiperControl(
        iconPrevious: Icons.arrow_circle_left,
        iconNext: Icons.arrow_circle_right,
        size: 40.0,
        color: Color.fromARGB(255, 55, 57, 59),
        padding: EdgeInsets.symmetric(horizontal: 5.0),
      ),
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemWidth: Constants.widthCard,
      itemHeight: Constants.heightCard,
      layout: SwiperLayout.STACK,
    );
  }
}
