import 'package:darader/constants.dart';
import 'package:darader/screens/register/components/auth_textfield.dart';
import 'package:darader/screens/welcome/components/auth_button.dart';
import 'package:darader/screens/welcome/components/dashed_border_logo.dart';
import 'package:darader/screens/welcome/components/login_redirect.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Blue section
        Container(
          padding: EdgeInsets.only(
            top: 0.15 * size.height,
            bottom: 0.07 * size.height,
          ),
          height: 0.58 * size.height,
          child: DashedBorderLogo(),
        ),
        // White section
        Container(
          height: size.height - 0.58 * size.height,
          width: size.width,
          padding: EdgeInsets.only(top: 30, left: 30, right: 30),
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Reset Password',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColour,
                ),
              ),
              Text(
                "Enter your email address and we'd send you a link to reset your password",
                style: TextStyle(
                  color: kInactiveIconColour,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 8),
              AuthTextField(
                placeholder: 'youremail@address.com',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 8),
              AuthButton(
                size: size,
                buttontitle: 'Login',
                onPressed: () {},
              ),
              SizedBox(height: 8),
              LoginRedirect(),
            ],
          ),
        )
      ],
    );
  }
}
