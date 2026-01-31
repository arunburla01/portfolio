import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sans extends StatelessWidget {
  final String title;
  final double size;

  const Sans(this.title, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: GoogleFonts.openSans(fontSize: size));
  }
}