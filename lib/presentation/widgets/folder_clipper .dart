import 'package:flutter/material.dart';

import '../../settings/constants.dart';

class FolderClipper extends StatefulWidget {
  const FolderClipper({super.key, required this.decorationImage});
  final String decorationImage;

  @override
  State<FolderClipper> createState() => _FolderClipperState();
}

class _FolderClipperState extends State<FolderClipper> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomFolderClipper(),
      child: Container(
        width: 270,
        height: Constants.heightCard - 75,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(widget.decorationImage),
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}

class CustomFolderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(size.width * 0.334, size.height * 0.287);
    path.lineTo(size.width * 0.334, size.height * 0.573);
    path.lineTo(size.width * 0.416, size.height * 0.644);
    path.lineTo(size.width * 0.498, size.height * 0.574);
    path.lineTo(size.width * 0.501, size.height * 0.238);
    path.lineTo(size.width * 0.444, size.height * 0.238);
    path.lineTo(size.width * 0.414, size.height * 0.285);
    path.lineTo(size.width * 0.333, size.height * 0.287);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
