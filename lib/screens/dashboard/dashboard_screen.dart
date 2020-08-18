import 'package:darader/constants.dart';
import 'package:darader/screens/dashboard/components/body.dart';
import 'package:darader/screens/home/components/bottom_nav_bar.dart';
import 'package:darader/screens/home/components/custom_floating_action_button.dart';
import 'package:darader/screens/home/components/drawer.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF9FAFA),
      endDrawer: CustomDrawer(),
      // appBar: buildAppBar(),
      body: Body(
        size: size,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActionButton(),
      bottomNavigationBar: BottomNavBar(
        dashboardColour: kPrimaryColour,
      ),
    );
  }
}
