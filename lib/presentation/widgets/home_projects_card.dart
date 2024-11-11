import 'package:benjamin_web/presentation/widgets/widgets.dart';
import 'package:benjamin_web/settings/constants.dart';
import 'package:flutter/material.dart';

import '../../models/projects_model.dart';

class HomeProjectsCard extends StatelessWidget {
  const HomeProjectsCard(
      {super.key, required this.index, required this.project});
  final int index;
  final ProjectsModel project;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return _createContainer(context);
      },
    );
  }

  Widget _createContainer(BuildContext context) {
    return Container(
      width: Constants.widthCard,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 143, 181, 181),
          width: 1,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(Constants.spacing),
          bottomRight: Radius.circular(Constants.spacing),
        ),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            right: 10,
            child: Text(
              "$index",
              style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
          ),
          InkWell(
            onTap: () => {},
            child: Column(
              children: [
                ClipPathCard(decorationImage: project.image),
                Text(
                  project.title,
                  semanticsLabel: project.title,
                  style: const TextStyle(
                    color: Colors.black12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
