import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
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

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context); // Accesses the screen/device info
    var screenHeight =
        size.height; //context -- The location of your widget in the tree
    var screenWidth = size.width;
    return Scaffold(
      drawer: Drawer(
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
                 iconButton(
                  "assets/twitter.svg",
                  "https://www.x.com",
                ),
                 iconButton(
                  "assets/github.svg",
                  "https://www.github.com/arunburla01",
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ), // by using icontheme , entire icons in the appbar looks with same instructions
        title: Row(
          children: [
            Spacer(flex: 3),
            Tabsweb(title: "Home"),
            Spacer(),
            Tabsweb(title: "Projects"),
            Spacer(),
            Tabsweb(title: "Blog"),
            Spacer(),
            Tabsweb(title: "About me"),
            Spacer(),
            Tabsweb(title: "Contact ME"),
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
                    Sans("Flutter Developer", 30),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 20),
                        Sans("arunburla01@gmail.com", 15),
                      ],
                    ),
                    SizedBox(height: 10),

                    Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: 20),
                        Sans("8985088844", 15),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.location_city),
                        SizedBox(width: 20),
                        Sans("Ongole, AP", 15),
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
                    Sans("Hello im arun specilizd in  flutter development", 15),
                    Sans("dfakfhdkfndfkjafhahkdskfdj", 15),
                    Sans("the art security for Android, web, ios, desktop", 15),
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
                          child: Sans("flutter", 15),
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
                          child: Sans("firebase", 15),
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
                          child: Sans("node", 15),
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
                          child: Sans("Dart", 15),
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
            child: Column(
              //column --> SansBold, Column
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("ContactMe", 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                          heading: "First Name",
                          width: 350,
                          hinttext: "please enter your Name",
                        ),
                        SizedBox(height: 15),

                        TextForm(
                          heading: "Email",
                          width: 350,
                          hinttext: "please enter your email",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "email required";
                            }
                            final emailRegex = RegExp(
                              r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                            );
                            if (!emailRegex.hasMatch(value)) {
                              return "Invalid email";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                          heading: "Last Name",
                          width: 350,
                          hinttext: "please enter your Lastname",
                        ),
                        SizedBox(height: 15),

                        TextForm(
                          heading: "Phone",
                          width: 350,
                          hinttext: "please enter your phone number",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "please enter number";
                            }
                            if (!RegExp(r'^[0-9 ]+$').hasMatch(value)) {
                              return "enter valid phone number";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                TextForm(
                  heading: "Message",
                  width: screenWidth / 1.5,
                  hinttext: "please enter your message",
                  maxlines: 5,
                ),
                MaterialButton(
                  onPressed: () {},
                  height: 60,
                  minWidth: 200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 20,
                  color: Colors.tealAccent,
                  child: SansBold("Submit", 20),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
