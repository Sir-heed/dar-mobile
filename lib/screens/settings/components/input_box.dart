import 'package:darader/constants.dart';
import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  InputBox({this.label, this.placeholder, this.keyboardType});
  final String label;
  final String placeholder;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        keyboardType: keyboardType,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: kInactiveIconColour,
          fontSize: 18,
        ),
        onChanged: (value) {
          //Do something with the user input.
        },
        decoration: InputDecoration(
          hintText: placeholder,
          contentPadding: EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 20.0,
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          labelText: label,
          labelStyle: TextStyle(
            color: Color(0xFF6A6A6A),
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}
