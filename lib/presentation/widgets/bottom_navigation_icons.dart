import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationIcons extends StatelessWidget {
  const BottomNavigationIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      height: 88,
      width: 320,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Card(
          child: getIcons(),
        ),
      ),
    );
  }

  static Widget getIcons() {
    List<String> icons = [
      "assets/icons/github.svg",
      "assets/icons/linkedin.svg",
      'assets/icons/datacamp.svg',
      "assets/icons/email.svg",
      "assets/icons/medium.svg",
    ];
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: icons.map((iconPath) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SvgPicture.asset(
              iconPath,
              semanticsLabel: 'Icon',
              height: 40,
            ),
          );
        }).toList());
  }
}
