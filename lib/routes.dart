import 'package:flutter/material.dart';
import 'package:portfolio/mobile/aboutme_mobile.dart';

import 'package:portfolio/mobile/contact_mobile.dart';
import 'package:portfolio/mobile/landing_pagemobile.dart';
import 'package:portfolio/web/aboutmeweb.dart';
import 'package:portfolio/web/contact_web.dart';
import 'package:portfolio/web/landing_page_web.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //Route<dynamic>? Function(RouteSettings)? onGenerateRoute,
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return LandingPageWeb();
              } else {
                return LandingPagemobile();
              }
            },
          ),
        );
      case "/contactme":
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return ContactWeb();
              } else {
                return ContactMobile();
              }
            },
          ),
        );
        case "/aboutme":
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return Aboutmeweb();
              } else {
                return AboutmeMobile();
              }
            },
          ),
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            // this helps to gain adaptive ui based on screen size
            builder: (context, constraints) {
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
}
