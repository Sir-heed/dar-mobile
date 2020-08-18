import 'package:darader/constants.dart';
import 'package:darader/screens/category/category_screen.dart';
import 'package:flutter/material.dart';

class ScrollTitle extends StatelessWidget {
  ScrollTitle({this.title, this.size});
  final Size size;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: kTextColour,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoryScreen(
                    title: title,
                  ),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(right: 15),
              child: Text(
                'MORE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColour,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
