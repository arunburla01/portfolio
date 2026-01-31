import 'package:flutter/material.dart';
import 'package:portfolio/mobile/reusable_widgets_mobile/drawersmobile.dart';
import 'package:portfolio/mobile/landing_pagemobile.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //without safe area, text might be hidden under the notch // with SafeArea, it stays in the clear visible area.
      child: Scaffold(
        //extend the body behind appbar
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        // Drawer for navigation
        endDrawer: const DrawersMobile(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                backgroundColor: Colors.white,
                iconTheme: const IconThemeData(size: 35.0, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/contact_image.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: const SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 25.0),
            child: ContactFormMobile(),
        ),
      ),
    ));
  }
}
