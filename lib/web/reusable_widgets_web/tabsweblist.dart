import 'package:flutter/material.dart';
import 'package:portfolio/web/reusable_widgets_web/tabsweb.dart';

class Tabsweblist extends StatelessWidget {
  const Tabsweblist({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children:[
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
            Spacer(),]);
  }
}
