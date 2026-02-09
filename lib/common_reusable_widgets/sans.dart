import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sans extends StatelessWidget {
  final String title;
  final double size;
  final color;

  const Sans({super.key,required this.title,required this.size,this.color} );

  @override
  Widget build(BuildContext context) {
    return Text(title, style: GoogleFonts.openSans(fontSize: size,color:color ));
  }
}