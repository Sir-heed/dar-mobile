import 'package:darader/constants.dart';
import 'package:darader/screens/dashboard/components/dashboard_card.dart';
import 'package:darader/screens/home/components/app_bar.dart';
import 'package:flutter/material.dart';

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
        // Welcome, John Doe
        Container(
          padding: EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                'Welcome,',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 30,
                  color: kPrimaryColour,
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

        // The grid boxes
        Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 15),
          // color: Colors.yellow,
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    DashboardCard(
                      value: '1255',
                      icon: Icons.search,
                    ),
                    DashboardCard(
                      value: '400',
                      icon: Icons.storage,
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    DashboardCard(
                      value: '625',
                      icon: Icons.thumb_up,
                    ),
                    DashboardCard(
                      value: '225',
                      icon: Icons.calendar_today,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
