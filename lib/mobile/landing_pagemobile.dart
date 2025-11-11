import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPagemobile extends StatefulWidget {
  const LandingPagemobile({super.key});

  @override
  State<LandingPagemobile> createState() => _LandingPagemobileState();
}

class _LandingPagemobileState extends State<LandingPagemobile> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 10,
        iconTheme: IconThemeData(size: 30, color: Colors.black),
      ),
      endDrawer: Drawer(
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
            TabsMobile(text: "home"),
            SizedBox(height: 10),
            TabsMobile(text: "blog"),
            SizedBox(height: 10),
            TabsMobile(text: "Projects"),
            SizedBox(height: 10),
            TabsMobile(text: "Aboutme"),
            SizedBox(height: 10),
            TabsMobile(text: "Contactme"),
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
                  onPressed: () async => await launchUrl(
                    Uri.parse("https://www.x.com/"),
                  ),
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
                )
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 117,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 110.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/cropped_circle_image.png"),
              ),
            ),
            SizedBox(height: 25,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.tealAccent,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),bottomRight: Radius.circular(20))
                  ),
                  child: SansBold("Hello i'm", 15),
                )
              ],
            )
          ],
        )],
      ),
    );
  }
}
