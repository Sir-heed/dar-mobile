import 'package:darader/constants.dart';
import 'package:darader/screens/bookmark/bookmark_screen.dart';
import 'package:darader/screens/dashboard/dashboard_screen.dart';
import 'package:darader/screens/home/home_screen.dart';
import 'package:darader/screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar(
      {this.homeColour,
      this.dashboardColour,
      this.bookmarkColour,
      this.profileColour});
  final Color homeColour, dashboardColour, bookmarkColour, profileColour;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF9F9FA),
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 3, top: 3),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarIconButton(
              colour: homeColour,
              title: 'Home',
              icon: Icons.home,
              screen: HomeScreen()),

          NavBarIconButton(
            colour: dashboardColour,
            title: 'Dashboard',
            icon: Icons.dashboard,
            screen: DashboardScreen(),
          ),

          // ICON BUTTON
          Column(
            children: <Widget>[],
          ),

          NavBarIconButton(
            colour: bookmarkColour,
            title: 'Bookmarks',
            icon: Icons.favorite,
            screen: BookmarkScreen(),
          ),

          NavBarIconButton(
            colour: profileColour,
            title: 'Profile',
            icon: Icons.person,
            screen: SettingsScreen(),
          ),
        ],
      ),
    );
  }
}

class NavBarIconButton extends StatelessWidget {
  NavBarIconButton({this.colour, this.title, this.icon, this.screen});

  final Color colour;
  final String title;
  final IconData icon;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => screen,
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 7),
        child: Column(
          children: [
            Icon(
              icon,
              color: colour != null ? colour : kInactiveIconColour,
              size: 20,
            ),
            Text(title, style: TextStyle(fontSize: 10))
          ],
        ),
      ),
    );
  }
}
