import 'package:flutter/material.dart';
import 'package:portfolio/common_reusable_widgets/sansbold.dart';
import 'package:portfolio/common_reusable_widgets/textform.dart';

class Contactformweb extends StatelessWidget {
  const Contactformweb({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Column(
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
                  text: "First Name",
                  containerwidth: 350,
                  hinttext: "please enter your Name",
                ),
                SizedBox(height: 15),

                TextForm(
                  text: "Email",
                  containerwidth: 350,
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
                  text: "Last Name",
                  containerwidth: 350,
                  hinttext: "please enter your Lastname",
                ),
                SizedBox(height: 15),

                TextForm(
                  text: "Phone",
                  containerwidth: 350,
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
          text: "Message",
          containerwidth: screenWidth / 1.5,
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
    );
  }
}
