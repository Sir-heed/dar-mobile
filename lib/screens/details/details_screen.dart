import 'package:darader/models/property.dart';
import 'package:darader/screens/details/components/body.dart';
import 'package:darader/screens/home/components/bottom_nav_bar.dart';
import 'package:darader/screens/home/components/custom_floating_action_button.dart';
import 'package:darader/screens/home/components/drawer.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({this.property});
  final Property property;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: CustomDrawer(),
      body: Body(
        size: size,
        property: property,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActionButton(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
