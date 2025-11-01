import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tabsweb extends StatefulWidget {
  final title;
  const Tabsweb({this.title, super.key});

  @override
  State<Tabsweb> createState() => _TabswebState();
}

class _TabswebState extends State<Tabsweb> {
  bool isentered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
        //onexit function helps to detect when the curser is away from widget area
        setState(() {
          isentered = false;
        });
        // print("enxited");
      },
      child: AnimatedDefaultTextStyle(
        //AnimatedDefaultTextStyle --> Text
        //AnimatedDefaultTextstyle(style1,style2)
        curve: Curves.elasticIn,
        duration: Duration(milliseconds: 100),
        style: isentered
            ? GoogleFonts.oswald(
                //Googlefonts is external package from pub.dev
                shadows: [Shadow(color: Colors.black, offset: Offset(0, -7))],
                color: Colors.transparent,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationColor: Colors.tealAccent,
                fontSize: 25,
              )
            : GoogleFonts.oswald(color: Colors.black, fontSize: 22),
        child: Text(widget.title),
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  final String title;
  final double size;

  const SansBold(this.title, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class Sans extends StatelessWidget {
  final String title;
  final double size;

  const Sans(this.title, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: GoogleFonts.openSans(fontSize: size));
  }
}

class AnimatedCard extends StatefulWidget {
  final String image;
  final String title;
  final BoxFit? fit;
  final bool? reverse;

  const AnimatedCard({super.key,required this.image,required this.title,this.fit,this.reverse=false});

  @override
  State<AnimatedCard> createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(vsync: this,duration: Duration(seconds: 4));
  @override
  Widget build(BuildContext context) {
    return Card(
      //Card --> column
      elevation: 30,
      shadowColor: Colors.tealAccent,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: Colors.tealAccent),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(widget.image, height: 200, width: 200),
            SizedBox(height: 10),
            Sans(widget.title, 15),
          ],
        ),
      ),
    );
  }
}

class TextForm extends StatelessWidget {
  final String heading;
  final double? width;
  final String? hinttext;
  final int? maxlines;
  final String? Function(String?)? validator;

  const TextForm({
    super.key,
    required this.heading,
    this.width,
    this.hinttext,
    this.maxlines,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //Column --> Sans,Sizedbox,Sizedbox
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(heading, 16),
        SizedBox(height: 5),
        SizedBox(
          //SizedBox --> TextformField
          width: width,

          child: TextFormField(
            validator: validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            // need to wrap with sizedbox because flutter cannot hit test a render box with no size
            decoration: InputDecoration(
              hintText: hinttext,

              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent, width: 2),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            maxLines: maxlines,
          ),
        ),
      ],
    );
  }
}
