import 'package:darader/constants.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    actions: <Widget>[
      Builder(
        builder: (context) => IconButton(
          icon: Image.asset('assets/icons/Icon Shape.png'),
          onPressed: () => Scaffold.of(context).openEndDrawer(),
        ),
      ),
    ],
  );
}

class CustomAppBar extends StatelessWidget {
  CustomAppBar({this.backgroundColour, this.image});
  final Color backgroundColour;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      color: backgroundColour == null ? kPrimaryColour : backgroundColour,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            icon: Image.asset(
                image == null ? 'assets/icons/Icon Shape.png' : image),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
          ),
        ],
      ),
    );
  }
}
