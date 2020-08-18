import 'package:darader/models/property.dart';
import 'package:darader/screens/home/components/small_horizontal_scroll.dart';
import 'package:flutter/material.dart';

class CategoryGrid extends StatelessWidget {
  CategoryGrid({
    this.size,
    this.displayProperties,
  });
  final Size size;
  final List<Property> displayProperties;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: displayProperties.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.75,
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 6.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return HomeRowScroll(
            property: displayProperties[index],
            size: size,
          );
        },
      ),
    );
  }
}
