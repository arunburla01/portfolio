import 'package:flutter/material.dart';
import 'package:portfolio/common_reusable_widgets/sans.dart';

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
              Sans( title: widget.title, size: 15,),
            ],
          ),
        ),
      ),
    );
  }
}
