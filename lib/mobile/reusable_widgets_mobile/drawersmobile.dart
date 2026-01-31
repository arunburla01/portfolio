import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/mobile/reusable_widgets_mobile/tabsmobile.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawersMobile extends StatelessWidget {
  const DrawersMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DrawerHeader(
            padding: EdgeInsets.only(bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: Colors.black),
              ),
              child: Image.asset("assets/cropped_circle_image.png"),
            ),
          ),
          TabsMobile(text: "home",pushname: "/home",),
          SizedBox(height: 10),
          TabsMobile(text: "blog",pushname: "/blog",),
          SizedBox(height: 10),
          TabsMobile(text: "Projects",pushname: "/projects",),
          SizedBox(height: 10),
          TabsMobile(text: "Aboutme",pushname: "/aboutme",),
          SizedBox(height: 10),
          TabsMobile(text: "Contactme",pushname: "/contactme",),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () async => await launchUrl(
                  Uri.parse("https://www.instagram.com/arunburla26"),
                ),
                icon: SvgPicture.asset(
                  "assets/instagram.svg",
                  // colorFilter: colorfilter,
                  width: 30,
                ),
              ),
              IconButton(
                onPressed: () async =>
                    await launchUrl(Uri.parse("https://www.x.com/")),
                icon: SvgPicture.asset(
                  "assets/twitter.svg",
                  // colorFilter: colorfilter,
                  width: 30,
                ),
              ),
              IconButton(
                onPressed: () async => await launchUrl(
                  Uri.parse("https://www.github.com/arunburla01"),
                ),
                icon: SvgPicture.asset(
                  "assets/github.svg",
                  // colorFilter: colorfilter,
                  width: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}