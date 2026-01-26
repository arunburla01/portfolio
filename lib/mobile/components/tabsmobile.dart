import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsMobile extends StatelessWidget {
  final String text;
  const TabsMobile({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 20,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      height: 50,
      minWidth: 200,
      color: Colors.black,
      onPressed: () {
        Navigator.of(context).pushNamed("/contact");
      },
      child: Text(
        text,
        style: GoogleFonts.openSans(color: Colors.white, fontSize: 20),
      ),
    );
  }
}