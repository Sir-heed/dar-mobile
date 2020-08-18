import 'package:darader/constants.dart';
import 'package:darader/screens/home/home_screen.dart';
import 'package:darader/screens/register/components/auth_textfield.dart';
import 'package:darader/screens/register/register_screen.dart';
import 'package:darader/screens/reset_password/reset_password_screen.dart';
import 'package:darader/screens/welcome/components/auth_button.dart';
import 'package:darader/screens/welcome/components/dashed_border_logo.dart';
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
            bottom: 0.05 * size.height,
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
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColour,
                ),
              ),
              Text(
                'Login in to your account',
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
              ),
              SizedBox(height: 8),
              AuthButton(
                size: size,
                buttontitle: 'Login',
                onPressed: () {
                  // Perform authentication
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }));
                },
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: kInactiveIconColour,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 2),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return RegisterScreen();
                              },
                            ),
                          );
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ResetPasswordScreen();
                      }));
                    },
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: kPrimaryColour,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
