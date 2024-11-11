import 'package:flutter/material.dart';

import '../../settings/constants.dart';

class CardPrincipal extends StatelessWidget {
  const CardPrincipal({super.key, required this.decorationImage});
  final String decorationImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: double.infinity,
      height: Constants.heightCard - 150,
      decoration: const BoxDecoration(color: Colors.green),
    );
  }
}
