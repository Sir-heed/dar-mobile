import 'package:darader/screens/home/components/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:darader/constants.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
    @required this.containerHeight,
  }) : super(key: key);

  final double containerHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColour,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: 230,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // App bar
          CustomAppBar(),
          Text(
            'Find your dream',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kWhiteText,
              fontSize: 24,
            ),
          ),
          Text(
            'home, hotel or lands',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kWhiteText,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 5),
          Container(
            height: 35,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 1),
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xFFDADADA),
                ),
                hintText: 'Anywhere',
                hintStyle: TextStyle(
                  color: kWhiteText.withOpacity(0.54),
                  fontSize: 15,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            height: 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                  ),
                  child: Text('House',
                      style: TextStyle(
                        color: kWhiteText,
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      )),
                ),
                SizedBox(width: 10),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                  ),
                  child: Text(
                    'Hotel',
                    style: TextStyle(
                      color: kWhiteText,
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                  ),
                  child: Text('Land',
                      style: TextStyle(
                        color: kWhiteText,
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      )),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    // padding: EdgeInsets.symmetric(
                    //   vertical: 4,
                    //   horizontal: 12,
                    // ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                    ),
                    child: Text('More Filters',
                        style: TextStyle(
                          color: kWhiteText,
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                        )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
