import 'package:carousel_pro/carousel_pro.dart';
import 'package:darader/constants.dart';
import 'package:darader/models/property.dart';
import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatelessWidget {
  Body({
    this.size,
    this.property,
  });
  final Size size;
  final Property property;
  @override
  Widget build(BuildContext context) {
    // List<String> imageList = [
    //   "assets/images/images (1).jpeg",
    //   "assets/images/images (2).jpeg",
    //   "assets/images/images (3).jpeg",
    //   "assets/images/images (4).jpeg",
    // ];
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  // Carousel
                  // CarouselSlider.builder(
                  //   itemCount: property.images.length,
                  //   itemBuilder: (BuildContext context, int itemIndex) =>
                  //       Container(
                  //     child: Image.asset(
                  //       property.images[itemIndex],
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  //   options: CarouselOptions(
                  //     height: 0.4 * size.height,
                  //     autoPlay: true,
                  //     autoPlayInterval: Duration(seconds: 3),
                  //     autoPlayAnimationDuration: Duration(seconds: 1),
                  //   ),
                  // ),

                  Container(
                      height: 0.4 * size.height,
                      width: size.width,
                      child: Carousel(
                        images: property.images
                            .map((String imageUrl) => Image.asset(
                                  imageUrl,
                                  fit: BoxFit.cover,
                                ))
                            .toList(),
                        dotSize: 4.0,
                        dotColor: Color(0xFF3F3F47),
                        dotBgColor: Colors.transparent,
                        animationCurve: Curves.ease,

                        // [
                        //   Image.asset(
                        //     property.images[0],
                        //     fit: BoxFit.cover,
                        //   ),
                        //   Image.asset(
                        //     property.images[1],
                        //     fit: BoxFit.cover,
                        //   ),
                        //   Image.asset(
                        //     property.images[2],
                        //     fit: BoxFit.cover,
                        //   ),
                        // ]
                      )),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: size.width,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/landwey.png'),
                            Text(
                              'LandWey',
                              style: TextStyle(fontSize: 12, color: kWhiteText),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: kPrimaryColour,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              // Carousel
              // CarouselSlider.builder(
              //   itemCount: property.images.length,
              //   itemBuilder: (BuildContext context, int itemIndex) => Container(
              //     child: Image.asset(
              //       property.images[itemIndex],
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              //   options: CarouselOptions(
              //     height: 0.4 * size.height,
              //     autoPlay: true,
              //     autoPlayInterval: Duration(seconds: 3),
              //     autoPlayAnimationDuration: Duration(seconds: 1),
              //   ),
              // ),
              // Text Content
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          property.title,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'N${property.price.toStringAsFixed(2)} /year',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      property.address,
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(children: <Widget>[
                          Icon(
                            FontAwesomeIcons.bed,
                            size: 30,
                          ),
                          SizedBox(height: 5),
                          Text(
                            '${property.bedrooms.toString()} bed',
                            style: TextStyle(fontSize: 15),
                          )
                        ]),
                        Column(children: <Widget>[
                          Icon(
                            FontAwesomeIcons.bath,
                            size: 30,
                          ),
                          SizedBox(height: 5),
                          Text(
                            '${property.toilets.toString()} bath',
                            style: TextStyle(fontSize: 15),
                          )
                        ]),
                        Column(children: <Widget>[
                          Icon(
                            FontAwesomeIcons.landmark,
                            size: 30,
                          ),
                          SizedBox(height: 5),
                          Text(
                            '${property.size.toString()} Sqft',
                            style: TextStyle(fontSize: 15),
                          )
                        ]),
                        Column(children: <Widget>[
                          Icon(
                            FontAwesomeIcons.layerGroup,
                            size: 30,
                          ),
                          SizedBox(height: 5),
                          Text(
                            '${property.floors.toString()}th floor',
                            style: TextStyle(fontSize: 15),
                          )
                        ]),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      'More Details',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(property.description, style: TextStyle(fontSize: 16)),
                    SizedBox(height: 20),
                    Text(
                      'Map',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: 250,
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 0.7 * size.width,
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(vertical: 20),
                            decoration: BoxDecoration(
                              color: kPrimaryColour,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              'Book This Property',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }
}
