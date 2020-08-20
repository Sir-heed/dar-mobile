import 'package:darader/constants.dart';
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

  bool _validateEmail = false;

  final String _emailError = "Email field can't be empty";

  @override
  void dispose() {
    _emailInput.dispose();
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
              top: 0.15 * widget.size.height,
              bottom: 0.07 * widget.size.height,
            ),
            height: 0.58 * widget.size.height,
            child: DashedBorderLogo(),
          ),
          // White section
          Container(
            height: widget.size.height - 0.58 * widget.size.height,
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
                  controller: _emailInput,
                  errorText: _validateEmail ? _emailError : null,
                ),
                SizedBox(height: 8),
                AuthButton(
                  size: widget.size,
                  buttontitle: 'Login',
                  onPressed: () {
                    setState(() {
                      _emailInput.text.trim().isEmpty
                          ? _validateEmail = true
                          : _validateEmail = false;
                    });
                  },
                ),
                SizedBox(height: 8),
                LoginRedirect(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
