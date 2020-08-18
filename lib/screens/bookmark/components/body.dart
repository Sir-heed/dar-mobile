import 'package:darader/constants.dart';
import 'package:darader/models/property.dart';
import 'package:darader/screens/category/components/category_grid.dart';
import 'package:darader/screens/home/components/home_header.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    double containerHeight = size.height * 0.3;
    return Column(
      children: <Widget>[
        HomeHeader(
          containerHeight: containerHeight,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Boomkmarks',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: kTextColour,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  'Your favourite properties, hotels',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: kTextColour,
                  ),
                ),
                Text(
                  'and lands',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: kTextColour,
                  ),
                ),
                SizedBox(height: 2),
                CategoryGrid(
                  size: size,
                  displayProperties: properties,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
