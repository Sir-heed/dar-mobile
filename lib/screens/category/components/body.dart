import 'package:darader/constants.dart';
import 'package:darader/models/property.dart';
import 'package:darader/screens/category/components/category_grid.dart';
import 'package:darader/screens/home/components/home_header.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({this.title, this.size});
  final String title;
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
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: kTextColour,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  'Find new properties, hotels and lands',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: kTextColour,
                  ),
                ),
                Text(
                  'lands of your dreams',
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
        ),
      ],
    );
  }
}
