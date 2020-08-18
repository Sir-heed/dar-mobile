import 'package:darader/constants.dart';
// import 'package:darader/screens/home/home_screen.dart';
import 'package:darader/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Inter',
        scaffoldBackgroundColor: kBackgroundColour,
        primaryColor: kPrimaryColour,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: kTextColour,
              fontFamily: 'Inter',
            ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: HomeScreen(),
      home: WelcomeScreen(),
    );
  }
}
