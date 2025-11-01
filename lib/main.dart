import 'package:flutter/material.dart';
import 'package:portfolio/mobile/landing_pagemobile.dart';
import 'package:portfolio/web/landing_page_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder( // this helps to gain adaptive ui based on screen size
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 800) {
            return LandingPageWeb();
          } else {
            return LandingPagemobile();
          }
        },
      ),
    );
  }
}
