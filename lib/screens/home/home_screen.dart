import 'package:darader/constants.dart';
// import 'package:darader/screens/home/components/app_bar.dart';
import 'package:darader/screens/home/components/custom_floating_action_button.dart';
import 'package:darader/screens/home/components/drawer.dart';
import 'components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: CustomDrawer(),
      // appBar: buildAppBar(),
      body: Body(size: size),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActionButton(),
      bottomNavigationBar: BottomNavBar(
        homeColour: kPrimaryColour,
      ),
    );
  }
}
