import 'package:flutter/material.dart';
import 'package:portfolio/common_reusable_widgets/sans.dart';
import 'package:portfolio/common_reusable_widgets/sansbold.dart';
import 'package:portfolio/common_reusable_widgets/animatedcard.dart';
import 'package:portfolio/web/reusable_widgets_web/contactformweb.dart';
import 'package:portfolio/web/reusable_widgets_web/tabsweb.dart';
import 'package:portfolio/web/reusable_widgets_web/webdrawer.dart';


class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
 

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context); // Accesses the screen/device info
    var screenHeight =
        size.height; //context -- The location of your widget in the tree
    var screenWidth = size.width;
    return Scaffold(
      drawer:Webdrawer() ,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ), // by using icontheme , entire icons in the appbar looks with same instructions
        title: Row(
          children: [
            Spacer(flex: 3),
            Tabsweb(title: "Home",pushname: "/home",),
            Spacer(),
            Tabsweb(title: "Projects",pushname: "/projects",),
            Spacer(),
            Tabsweb(title: "Blog",pushname: "/blog",),
            Spacer(),
            Tabsweb(title: "About me",pushname: "/aboutme",),
            Spacer(),
            Tabsweb(title: "Contact ME",pushname: "/contactme",),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        //Listview --> container
        children: [
          // first section
          SizedBox(
            //container --> Row
            height: screenHeight - 56,
            child: Row(
              //row -->column, circle avatar
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  //column --> container
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      //container --> text
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      child: SansBold("Hello I'm", 15),
                    ),
                    SizedBox(height: 15),
                    SansBold("Arun Kumar", 55),
                    Sans(title: "Flutter Developer",size:  30),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 20),
                        Sans(title: "arunburla01@gmail.com",size:  15),
                      ],
                    ),
                    SizedBox(height: 10),

                    Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: 20),
                        Sans(title: "8985088844",size:  15),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.location_city),
                        SizedBox(width: 20),
                        Sans(title: "Ongole, AP",size:  15),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 137,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 133,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 130,
                      backgroundImage: AssetImage(
                        "assets/IMG_20220115_045240.jpg",
                      ),
                      foregroundColor: const Color.fromARGB(255, 68, 106, 121),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // second section
          SizedBox(
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
                    Sans(title: "Hello im arun specilizd in  flutter development", size:15),
                    Sans(title: "dfakfhdkfndfkjafhahkdskfdj",size:  15),
                    Sans(title: "the art security for Android, web, ios, desktop",size:  15),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          //container --> sans
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              width: 2,
                            ),
                          ),
                          child: Sans(title: "flutter",size:  15),
                        ),
                        SizedBox(width: 10),
                        Container(
                          //container --> sans
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              width: 2,
                            ),
                          ),
                          child: Sans(title: "firebase",size:  15),
                        ),
                        SizedBox(width: 10),
                        Container(
                          //container --> sans
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              width: 2,
                            ),
                          ),
                          child: Sans(title: "node",size:  15),
                        ),
                        SizedBox(width: 10),
                        Container(
                          //container --> sans
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              width: 2,
                            ),
                          ),
                          child: Sans(title: "Dart",size:  15),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          //third section
          SizedBox(
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
          ),
          //fourth section
          SizedBox(
            height: screenHeight / 1.1,
            child:Contactformweb() 
          ),
        ],
      ),
    );
  }
}
