import 'package:flutter/material.dart';
import 'package:portfolio/common_reusable_widgets/animatedcard.dart';
import 'package:portfolio/common_reusable_widgets/sans.dart';
import 'package:portfolio/common_reusable_widgets/sansbold.dart';
import 'package:portfolio/common_reusable_widgets/tealcontainer.dart';
import 'package:portfolio/mobile/reusable_widgets_mobile/drawersmobile.dart';

class AboutmeMobile extends StatelessWidget {
  const AboutmeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(),endDrawer: DrawersMobile(),
      body: SingleChildScrollView(
        child: Column(children: [ Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SansBold("Aboutme", 35.0,),
                        Sans( title: 
                          "I’m a passionate Flutter developer focused on building clean, fast, and user-friendly mobile applications. I enjoy turning ideas into smooth, functional apps with beautiful UI and solid performance. ",
                         size:  15.0,
                         color: Colors.black,
                        ),
                        Wrap(
                          spacing: 7.0,
                          runSpacing: 7.0,
                          children: [
                            TealContainer(text: "Flutter"),
                            TealContainer(text: "Firebase"),
                            TealContainer(text: "Dart"),
                            TealContainer(text: "Ui/Ux"),
                          ],
                        ),
                      ],
                    ),
                  ),SizedBox(height: 60),
                  SansBold("What i do?", 35.0),
        
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatedCard(
                        image: "assets/web.jpg",
                        title: "Web Development",
                        width: 300,
                      ),
                      SizedBox(height: 35),
                      AnimatedCard(
                        image: "assets/app.png",
                        title: "App Development",
                        width: 300,
                        fit: BoxFit.contain,
                        reverse: true,
                      ),
                      SizedBox(height: 35),
                      AnimatedCard(
                        image: "assets/firebase.png",
                        title: "Back-end Development",
                        width: 300,
                      ),
        ])]
                 
                  
        ),
      ),
    );
  }
}