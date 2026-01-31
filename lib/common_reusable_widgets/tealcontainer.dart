import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TealContainer extends StatelessWidget {
  final String text;
  const TealContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: BoxBorder.all(
          color: Colors.tealAccent,
          style: BorderStyle.solid,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Text(text, style: GoogleFonts.openSans(fontSize: 15)),
      ),
    );
  }
}
