import 'package:darader/constants.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  AuthButton({
    this.size,
    this.buttontitle,
    this.onPressed,
  });
  final Size size;
  final String buttontitle;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        // width: size.width - 100,
        decoration: BoxDecoration(
          color: kPrimaryColour,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Center(
          child: Text(
            buttontitle,
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
