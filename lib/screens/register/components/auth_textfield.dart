import 'package:darader/constants.dart';
import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  AuthTextField({
    this.keyboardType,
    this.placeholder,
    this.hideText,
    this.controller,
    this.errorText,
  });
  final TextInputType keyboardType;
  final String placeholder;
  final bool hideText;
  final TextEditingController controller;
  final String errorText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: hideText == null ? false : hideText,
      keyboardType: keyboardType,
      textAlign: TextAlign.left,
      style: TextStyle(
        color: kInactiveIconColour,
        fontSize: 21,
      ),
      onChanged: (value) {
        //Do something with the user input.
      },
      decoration: InputDecoration(
        hintText: placeholder,
        errorText: errorText,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF4044FC), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF4044FC), width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
      // TextField()
    );
  }
}
