import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/common_reusable_widgets/sansbold.dart';
import 'package:url_launcher/url_launcher.dart';

class Webdrawer extends StatelessWidget {
   Widget iconButton(String imagepath, String url) {
    return IconButton(
      icon: SvgPicture.asset(
        imagepath,
        colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
        width: 35,
      ),
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
    );
  }
  const Webdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.tealAccent,
              radius: 72,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 70,
                backgroundImage: AssetImage("assets/IMG_20220115_045240.jpg"),
              ),
            ),
            SizedBox(height: 15),
            SansBold("Arun Kumar", 20),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                iconButton(
                  "assets/instagram.svg",
                  "https://www.instagram.com/arunburla26",
                ),
                iconButton("assets/twitter.svg", "https://www.x.com"),
                iconButton(
                  "assets/github.svg",
                  "https://www.github.com/arunburla01",
                ),
              ],
            ),
          ],
        ),
      );
  }
}