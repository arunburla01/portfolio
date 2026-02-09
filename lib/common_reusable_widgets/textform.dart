import 'package:flutter/material.dart';
import 'package:portfolio/common_reusable_widgets/sans.dart';

class TextForm extends StatelessWidget {
  final String text;
  final double? containerwidth;
  final String? hinttext;
  final int? maxlines;
  final String? Function(String?)? validator;

  const TextForm({
    super.key,
    required this.text,
    this.containerwidth,
    this.hinttext,
    this.maxlines,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //Column --> Sans,Sizedbox,Sizedbox
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(title: text,size: 16,),
        SizedBox(height: 5),
        SizedBox(
          //SizedBox --> TextformField
          width: containerwidth,

          child: TextFormField(
            validator: validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            // need to wrap with sizedbox because flutter cannot hit test a render box with no size
            decoration: InputDecoration(
              hintText: hinttext,

              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent, width: 2),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            maxLines: maxlines,
          ),
        ),
      ],
    );
  }
}
