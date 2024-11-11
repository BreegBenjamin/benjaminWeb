import 'package:benjamin_web/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HomeText(),
        CardViewTech(),
        CardSwiper(),
        BottomNavigationIcons(),
      ],
    );
  }
}
