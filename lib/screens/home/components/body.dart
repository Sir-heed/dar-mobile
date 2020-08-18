import 'package:darader/models/property.dart';
import 'package:darader/screens/home/components/home_header.dart';
import 'package:darader/screens/home/components/large_horizontal_scroll.dart';
import 'package:darader/screens/home/components/scroll_title.dart';
import 'package:darader/screens/home/components/small_horizontal_scroll.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    // double containerHeight = size.height * 0.3;
    double containerHeight = 250;
    return Column(
      children: <Widget>[
        // The blue header part
        HomeHeader(containerHeight: containerHeight),
        // The White parts that shows houses
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                // The Discover Scroll
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    children: <Widget>[
                      ScrollTitle(
                        title: 'Discover',
                        size: size,
                      ),
                      // The main part
                      // Scrollable View

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            HomeRowScroll(
                              size: size,
                              property: properties[0],
                            ),
                            HomeRowScroll(
                              size: size,
                              property: properties[1],
                            ),
                            HomeRowScroll(
                              size: size,
                              property: properties[2],
                            ),
                            HomeRowScroll(
                              size: size,
                              property: properties[3],
                            ),
                            HomeRowScroll(
                              size: size,
                              property: properties[4],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // The Featured scroll
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    children: <Widget>[
                      ScrollTitle(
                        size: size,
                        title: 'Featured',
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            HomeLargeScroll(
                              size: size,
                              property: properties[5],
                            ),
                            HomeLargeScroll(
                              size: size,
                              property: properties[6],
                            ),
                            HomeLargeScroll(
                              size: size,
                              property: properties[7],
                            ),
                            HomeLargeScroll(
                              size: size,
                              property: properties[8],
                            ),
                            HomeLargeScroll(
                              size: size,
                              property: properties[9],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // The Recent Scroll
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    children: <Widget>[
                      ScrollTitle(
                        title: 'Recent',
                        size: size,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            HomeLargeScroll(
                              size: size,
                              property: properties[0],
                            ),
                            HomeLargeScroll(
                              size: size,
                              property: properties[2],
                            ),
                            HomeLargeScroll(
                              size: size,
                              property: properties[4],
                            ),
                            HomeLargeScroll(
                              size: size,
                              property: properties[6],
                            ),
                            HomeLargeScroll(
                              size: size,
                              property: properties[8],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
