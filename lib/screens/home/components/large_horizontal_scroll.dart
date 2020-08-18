import 'package:darader/models/property.dart';
import 'package:darader/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:darader/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeLargeScroll extends StatelessWidget {
  HomeLargeScroll({@required this.size, this.property});

  final Size size;
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
        padding: EdgeInsets.symmetric(horizontal: 5),
        width: 280,
        height: 230,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 280,
                height: 180,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage(property.images[0]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    property.title,
                    style: TextStyle(
                      color: kTextColour,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "N${property.price} /year",
                    style: TextStyle(
                      color: kTextColour,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                property.address,
                style: TextStyle(fontSize: 12),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.bed,
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
                  SizedBox(
                    width: 10,
                  ),
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
                  SizedBox(
                    width: 10,
                  ),
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
            ]),
      ),
    );
  }
}
