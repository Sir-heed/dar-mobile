import 'package:darader/constants.dart';
import 'package:darader/screens/home/home_screen.dart';
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
            top: 100,
            bottom: 30,
          ),
          height: 0.55 * size.height,
          child: DashedBorderLogo(),
        ),
        // White section
        Container(
          height: size.height - 0.55 * size.height,
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
                'Register',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColour,
                ),
              ),
              Text(
                'Sign up for an account on Darader',
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
              AuthTextField(
                placeholder: '*********************',
                keyboardType: TextInputType.visiblePassword,
                hideText: true,
              ),
              SizedBox(height: 8),
              AuthButton(
                size: size,
                buttontitle: 'Sign up',
                onPressed: () {
                  // Perform authentication
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }));
                },
              ),
              SizedBox(height: 5),
              LoginRedirect(),
            ],
          ),
        )
      ],
    );
  }
}
