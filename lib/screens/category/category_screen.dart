import 'package:darader/constants.dart';
import 'package:darader/screens/category/components/body.dart';
import 'package:darader/screens/home/components/bottom_nav_bar.dart';
import 'package:darader/screens/home/components/custom_floating_action_button.dart';
import 'package:darader/screens/home/components/drawer.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: CustomDrawer(),
      // appBar: buildAppBar(),
      body: Body(
        title: title,
        size: size,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActionButton(),
      bottomNavigationBar: BottomNavBar(
        homeColour: kPrimaryColour,
      ),
    );
  }
}
