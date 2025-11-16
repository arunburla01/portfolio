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
    return GestureDetector(onTap: () {
      Navigator.of(context).pushNamed("/contact");
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
  final double? height;
  final double? width;

  const AnimatedCard({
    super.key,
    required this.image,
    required this.title,
    this.fit,
    this.reverse,
    this.height,
    this.width,
  });

  @override
  State<AnimatedCard> createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(
        vsync: this,
        duration: const Duration(seconds: 4),
      )..repeat(
        reverse: true,
      ); //vsync -- Connects animation to the screen refresh (saves battery + smooth animation)
  late final Animation<Offset> _animation =
      Tween(
        begin: widget.reverse == true ? const Offset(0, 0.08) : Offset.zero,
        end: widget.reverse == true ? Offset.zero : const Offset(0, 0.08),
      ).animate(
        _controller,
      ); //animate(_controller) -- Connects Tween to the controller so animation plays
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        color: Colors.white,
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                widget.image,
                height: widget.height ?? 200,
                width: widget.width ?? 200,
                fit: widget.fit,
              ),
              SizedBox(height: 10),
              Sans(widget.title, 15),
            ],
          ),
        ),
      ),
    );
  }
}

class TextForm extends StatelessWidget {
  final String text;
  final double? containerwidth;
  final String? hinttext;
  final int? maxlines;
  final String? Function(String?)? validator;

  const TextForm({
    super.key,
    required this.text,
    this.containerwidth,
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
        Sans(text, 16),
        SizedBox(height: 5),
        SizedBox(
          //SizedBox --> TextformField
          width: containerwidth,

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
