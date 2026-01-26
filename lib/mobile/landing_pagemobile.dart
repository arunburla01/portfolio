import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';
import 'package:portfolio/mobile/components/mobile_components.dart';

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
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 10,
        iconTheme: IconThemeData(size: 30, color: Colors.black),
      ),
      endDrawer: DrawersMobile(),
      body: ListView(
        //Listview --> column
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 117,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 110.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(
                    "assets/cropped_circle_image.png",
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: SansBold("Hello i'm", 15),
                    ),
                    SansBold("Arun Kuamr", 40),
                    SansBold("Flutter developer", 20.0),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(
                    direction: Axis.vertical,
                    spacing: 3.0,
                    children: [
                      Icon(Icons.email),
                      Icon(Icons.phone),
                      Icon(Icons.location_city),
                    ],
                  ),
                  SizedBox(width: 40),
                  Wrap(
                    direction: Axis.vertical,
                    spacing: 9.0,
                    children: [
                      Sans("arunburla01@gmail.com", 15),
                      Sans("+91 8985088844", 15),
                      Sans("Ongole, Prakasam", 15),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 60),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SansBold("Aboutme", 35.0),
                    Sans(
                      "I’m a passionate Flutter developer focused on building clean, fast, and user-friendly mobile applications. I enjoy turning ideas into smooth, functional apps with beautiful UI and solid performance. ",
                      15.0,
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
              ),
              SizedBox(height: 60),
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
                ],
              ),
              SizedBox(height: 60),
              ContactFormMobile(),
              SizedBox(height: 60,)
            ],
          ),
        ],
      ),
    );
  }
}

class ContactFormMobile extends StatelessWidget {
  const ContactFormMobile({
    super.key,
   
  });



  @override
  Widget build(BuildContext context) {
     var widthDevice = MediaQuery.of(context).size.width;
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        SansBold("Contactme", 35),
        TextForm(text: "Firstname",containerwidth: widthDevice/1.4,hinttext: "please tupe your name ",),
        TextForm(text: "Lastname",containerwidth: widthDevice / 1.4 ,hinttext: "please type your last name",),
        TextForm(text: "Email",containerwidth: widthDevice/1.4,hinttext: "please type your email address",),
        TextForm(text: "Phone",containerwidth: widthDevice/1.4,hinttext: "please type your phone number",),
        TextForm(text: "Message",containerwidth: widthDevice/1.4,hinttext: "message",maxlines: 10,),
        MaterialButton(onPressed: (){},
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
        height: 20,
        minWidth: widthDevice/2.2,
        color: Colors.tealAccent,
        child: SansBold("Submit", 20),
        ),
        
      ],
    );
  }
}


