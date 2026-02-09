import 'package:flutter/material.dart';
import 'package:portfolio/common_reusable_widgets/animatedcard.dart';
import 'package:portfolio/common_reusable_widgets/sans.dart';
import 'package:portfolio/common_reusable_widgets/sansbold.dart';
import 'package:portfolio/web/reusable_widgets_web/webdrawer.dart';

class Aboutmeweb extends StatelessWidget {
  const Aboutmeweb({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold( appBar: AppBar(),endDrawer: Webdrawer(),
      body: SingleChildScrollView(
        child: Column(
          children:[ SizedBox(
            height: screenHeight / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/web.jpg", height: screenWidth / 1.9),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SansBold("Aboutme", 40),
                    Sans(
                      title: "Hello im arun specilizd in  flutter development",
                      size: 15,
                    ),
                    Sans(title: "dfakfhdkfndfkjafhahkdskfdj", size: 15),
                    Sans(
                      title: "the art security for Android, web, ios, desktop",
                      size: 15,
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          //container --> sans
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.tealAccent, width: 2),
                          ),
                          child: Sans(title: "flutter", size: 15),
                        ),
                        SizedBox(width: 10),
                        Container(
                          //container --> sans
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.tealAccent, width: 2),
                          ),
                          child: Sans(title: "firebase", size: 15),
                        ),
                        SizedBox(width: 10),
                        Container(
                          //container --> sans
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.tealAccent, width: 2),
                          ),
                          child: Sans(title: "node", size: 15),
                        ),
                        SizedBox(width: 10),
                        Container(
                          //container --> sans
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.tealAccent, width: 2),
                          ),
                          child: Sans(title: "Dart", size: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ), SizedBox(
              //Sizedbox --> Column
              height: screenHeight / 1.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //Column --> SansBold, Row
                children: [
                  SansBold("What I do", 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //Row --> Card
                    children: [
                      AnimatedCard(
                        image: "assets/web.png",
                        title: "Web development",
                      ),
                      AnimatedCard(
                        image: "assets/app.png",
                        title: "Android development",
                        reverse: true,
                      ),
                      AnimatedCard(
                        image: "assets/firebase.png",
                        title: "Backend Development",
                      ),
                    ],
                  ),
                ],
              ),
            ),]
        ),
      ),
    );
  }
}
