import 'package:flutter/material.dart';

class CustomAuthTextfield extends StatelessWidget {
  String hintText;
  Color borderClr;
  Widget? suffiexWidget;
  Color? textClr;

  CustomAuthTextfield({
    required this.hintText,
    required this.borderClr,
    this.suffiexWidget,
    this.textClr,
});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: borderClr,

          ),
        ),
        suffixIcon: suffiexWidget,
        hintText: hintText,
        hintStyle: TextStyle(
          // color: Color(0xFF222222),
          color: textClr==null? Color(0xFF222222):textClr,
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          height: 0,
        ),
      ),
    );
  }
}


