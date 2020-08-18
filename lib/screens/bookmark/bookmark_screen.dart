import 'package:darader/constants.dart';
import 'package:darader/screens/bookmark/components/body.dart';
import 'package:darader/screens/home/components/bottom_nav_bar.dart';
import 'package:darader/screens/home/components/custom_floating_action_button.dart';
import 'package:darader/screens/home/components/drawer.dart';
import 'package:flutter/material.dart';

class BookmarkScreen extends StatelessWidget {
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
        bookmarkColour: kPrimaryColour,
      ),
    );
  }
}
