import 'package:flutter/material.dart';

class CardSwiperGrid extends StatefulWidget {
  const CardSwiperGrid({super.key});

  @override
  State<CardSwiperGrid> createState() => _CardSwiperGridState();
}

class _CardSwiperGridState extends State<CardSwiperGrid> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 140,
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
          child: getContainerData(),
        ),
      ],
    );
  }

  Widget getContainerData() {
    return Column(
      children: [],
    );
  }
}
