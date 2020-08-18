import 'package:darader/models/property.dart';
import 'package:darader/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:darader/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeRowScroll extends StatelessWidget {
  HomeRowScroll({this.size, this.property});
  final Size size;
  // final String image;
  // final String price;
  // final String address;
  final Property property;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              property: property,
            ),
          ),
        );
      },
      child: Container(
          padding: EdgeInsets.all(5),
          width: 160,
          height: 210,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage(property.images[0]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'N${property.price.toStringAsFixed(2)} /year',
                style: TextStyle(
                  color: kTextColour,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(
                property.address,
                style: TextStyle(
                  color: kTextColour,
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                ),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.bed,
                        // Icons.room,
                        color: kTextColour,
                        size: 12,
                      ),
                      SizedBox(width: 5),
                      Text(
                        property.bedrooms.toString(),
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.bath,
                        color: kTextColour,
                        size: 12,
                      ),
                      SizedBox(width: 5),
                      Text(
                        property.toilets.toString(),
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.landmark,
                        color: kTextColour,
                        size: 12,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '${property.size} sqft',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
