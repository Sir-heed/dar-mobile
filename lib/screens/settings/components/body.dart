import 'package:darader/constants.dart';
import 'package:darader/screens/home/components/app_bar.dart';
import 'package:darader/screens/settings/components/input_box.dart';
import 'package:darader/screens/settings/components/social_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatelessWidget {
  Body({this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // App Bar
        Container(
          padding: EdgeInsets.only(right: 20),
          child: CustomAppBar(
            image: 'assets/icons/Blue Icon Shape.png',
            backgroundColour: Color(0xFFF9FAFA),
          ),
        ),
        // johndoe@gmail.com
        Container(
          padding: EdgeInsets.only(left: 30),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 30,
                  color: kPrimaryColour,
                ),
              ),
              Text(
                'johndoe@gmail.com',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),

        Divider(
          color: kTextColour,
          height: 3,
        ),

        // Container under the section
        Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'ACCOUNT SETTINGS',
                style: TextStyle(
                  color: kPrimaryColour,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 8),
              InputBox(
                label: 'Email Address',
                placeholder: 'johndoe@gmail.com',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 8),
              InputBox(
                label: 'Password',
                placeholder: 'Old Password',
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 8),
              InputBox(
                label: 'New Password',
                placeholder: 'New Password',
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 8),
              InputBox(
                label: 'Phone Number',
                placeholder: '+2348163336460',
                keyboardType: TextInputType.phone,
              ),
            ],
          ),
        ),

        // Social Settings
        Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'SOCIAL SETTINGS',
                style: TextStyle(
                  color: kPrimaryColour,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: <Widget>[
                  // Facebook
                  SocialButton(
                    icon: FontAwesomeIcons.facebookSquare,
                    buttonText: 'Linked',
                    boxColour: Color(0xFF3B5998),
                  ),
                  // Twitter
                  SocialButton(
                    icon: FontAwesomeIcons.twitter,
                    buttonText: 'Unlinked',
                    boxColour: Color(0xFF979797),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
