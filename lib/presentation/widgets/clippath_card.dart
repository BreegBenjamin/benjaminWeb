import 'package:flutter/material.dart';
import '../../settings/constants.dart';

class ClipPathCard extends StatelessWidget {
  const ClipPathCard({super.key, required this.decorationImage});

  final String decorationImage;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: CustomShapeClipper(),
        child: Container(
          width: 280,
          height: Constants.heightCard - 60,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(decorationImage),
            fit: BoxFit.fill,
          )),
        ));
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(24, 0);
    path.quadraticBezierTo(0, 0, 0, 24);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.35);
    path.lineTo(size.width - 80, 0);
    path.lineTo(20, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
