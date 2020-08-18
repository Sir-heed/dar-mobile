import 'package:darader/constants.dart';
import 'package:darader/screens/register/register_screen.dart';
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
      children: <Widget>[
        // Blue section
        Container(
          width: size.width,
          color: kPrimaryColour,
          padding: EdgeInsets.only(
            top: 100,
            bottom: 50,
            left: 50,
            right: 50,
          ),
          height: 0.6 * size.height,
          child: DashedBorderLogo(),
        ),
        // White section
        Container(
          width: size.width,
          height: size.height - 0.6 * size.height,
          padding: EdgeInsets.only(top: 40, left: 30, right: 30),
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColour,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'You are only a few click away from getting your dream home or hotel reservation.',
                  style: TextStyle(
                    color: kInactiveIconColour,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'Get started now.',
                  style: TextStyle(
                    color: kInactiveIconColour,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 5),
                AuthButton(
                  size: size,
                  buttontitle: 'Register',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegisterScreen();
                    }));
                  },
                ),
                SizedBox(height: 5),
                LoginRedirect(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
