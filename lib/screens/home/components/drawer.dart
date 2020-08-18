import 'package:darader/screens/bookmark/bookmark_screen.dart';
import 'package:darader/screens/dashboard/dashboard_screen.dart';
import 'package:darader/screens/home/home_screen.dart';
import 'package:darader/screens/settings/settings_screen.dart';
import 'package:darader/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromRGBO(0, 114, 177, 0.9),
        padding: EdgeInsets.only(top: 60, bottom: 40, left: 80, right: 30),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Color(0xFFFFFFFF),
                      size: 35,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ],
            ),
            SizedBox(height: 40),
            DrawerTile(
              title: 'Home',
              icon: Icons.home,
              screen: HomeScreen(),
            ),
            SizedBox(height: 20),
            DrawerTile(
              title: 'Dashboard',
              icon: Icons.dashboard,
              screen: DashboardScreen(),
            ),
            SizedBox(height: 20),
            DrawerTile(
              title: 'Bookmarks',
              icon: Icons.favorite,
              screen: BookmarkScreen(),
            ),
            SizedBox(height: 20),
            DrawerTile(
              title: 'Account',
              icon: Icons.person,
              screen: SettingsScreen(),
            ),
            Spacer(),
            DrawerTile(
              title: 'Logout',
              icon: FontAwesomeIcons.signOutAlt,
              screen: WelcomeScreen(),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  DrawerTile({this.title, this.icon, this.screen});
  final String title;
  final IconData icon;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return screen;
        }));
      },
      child: Row(
        children: [
          Icon(
            icon,
            size: 25,
            color: Color(0xFFFFFFFF),
          ),
          Padding(padding: EdgeInsets.only(left: 5)),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
