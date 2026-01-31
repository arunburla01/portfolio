import 'package:flutter/material.dart';
import 'package:portfolio/web/reusable_widgets_web/contactformweb.dart';
import 'package:portfolio/web/reusable_widgets_web/tabsweblist.dart';
import 'package:portfolio/web/reusable_widgets_web/webdrawer.dart';

class ContactWeb extends StatelessWidget {
  const ContactWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Webdrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxisscrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 500,
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(size: 25.0, color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/contact_image.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title: const Tabsweblist(),
            ),
          ];
        },
        body: SingleChildScrollView(child: const Contactformweb(),),
      ),
    );
  }
}
