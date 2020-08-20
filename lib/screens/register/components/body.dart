import 'package:darader/constants.dart';
import 'package:darader/screens/home/home_screen.dart';
import 'package:darader/screens/register/components/auth_textfield.dart';
import 'package:darader/screens/welcome/components/auth_button.dart';
import 'package:darader/screens/welcome/components/dashed_border_logo.dart';
import 'package:darader/screens/welcome/components/login_redirect.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  Body({this.size});
  final Size size;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _emailInput = TextEditingController();

  final _passwordInput = TextEditingController();

  bool _validateEmail = false;
  bool _validatePassword = false;

  final String _emailError = "Email field can't be empty";

  final String _passwordError = "Password field can't be empty";

  @override
  void dispose() {
    _emailInput.dispose();
    _passwordInput.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          // Blue section
          Container(
            padding: EdgeInsets.only(
              top: 100,
              bottom: 30,
            ),
            height: 0.55 * widget.size.height,
            child: DashedBorderLogo(),
          ),
          // White section
          Container(
            height: widget.size.height - 0.55 * widget.size.height,
            width: widget.size.width,
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
                  controller: _emailInput,
                  errorText: _validateEmail ? _emailError : null,
                ),
                SizedBox(height: 8),
                AuthTextField(
                  placeholder: '*********************',
                  keyboardType: TextInputType.visiblePassword,
                  hideText: true,
                  controller: _passwordInput,
                  errorText: _validatePassword ? _passwordError : null,
                ),
                SizedBox(height: 8),
                AuthButton(
                  size: widget.size,
                  buttontitle: 'Sign up',
                  onPressed: () {
                    setState(() {
                      _emailInput.text.trim().isEmpty
                          ? _validateEmail = true
                          : _validateEmail = false;
                      _passwordInput.text.isEmpty
                          ? _validatePassword = true
                          : _validatePassword = false;
                    });

                    // Perform authentication
                    if (_validateEmail == false && _validatePassword == false) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }));
                    }
                  },
                ),
                SizedBox(height: 5),
                LoginRedirect(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
