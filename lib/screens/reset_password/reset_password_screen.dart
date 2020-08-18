import 'package:darader/constants.dart';
import 'package:darader/screens/reset_password/components/body.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColour,
      body: Body(size: size),
    );
  }
}
