import 'package:darader/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      child: FloatingActionButton(
        elevation: 0.0,
        onPressed: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(150),
            border: Border.all(width: 5, color: kBackgroundColour),
          ),
          child: SvgPicture.asset(
            'assets/images/darader_icon.svg',
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
