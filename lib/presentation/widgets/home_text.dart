import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeText extends StatelessWidget {
  const HomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('My Skills', style: GoogleFonts.pacifico(fontSize: 20)),
          Text('Benjamin Breeg',
              style:
                  GoogleFonts.pacifico(fontSize: 20, color: Colors.blue[600])),
        ],
      ),
    );
  }
}
