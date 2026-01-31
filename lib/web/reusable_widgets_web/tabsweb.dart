import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tabsweb extends StatefulWidget {
  final String title;
  final String pushname;
  const Tabsweb({ super.key,required this.title, required this.pushname});

  @override
  State<Tabsweb> createState() => _TabswebState();
}

class _TabswebState extends State<Tabsweb> {
  bool isentered = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(widget.pushname);
      },
      child: MouseRegion(
        // MouseRegion --> AnimatedDefaultTextStyle
        //MouseRegion widget detects the mouse position when the curser hovers over it
        onEnter: (event) {
          // onenter funtion helps to detect the when hovered over on widget
          setState(() {
            isentered = true;
          });
          // print("entered");
        },
        onExit: (event) {
          setState(() {
            isentered = false;
          });
         
        },
        child: AnimatedDefaultTextStyle(
          //AnimatedDefaultTextStyle --> Text
          //AnimatedDefaultTextstyle(style1,style2)
          curve: Curves.elasticIn,
          duration: Duration(milliseconds: 100),
          style: isentered
              ? GoogleFonts.roboto(
                  //Googlefonts is external package from pub.dev
                  shadows: [Shadow(color: Colors.black, offset: Offset(0, -7))],
                  color: Colors.transparent,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationColor: Colors.tealAccent,
                  fontSize: 25,
                )
              : GoogleFonts.roboto(color: Colors.black, fontSize: 20),
          child: Text(widget.title),
        ),
      ),
    );
  }
}