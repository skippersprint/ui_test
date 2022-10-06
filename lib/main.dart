import 'package:flutter/material.dart';
import 'package:ui_test/screens/LandingScreen.dart';
import 'dart:ui';

import 'package:ui_test/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI TEST APP',
      theme: ThemeData(
        primaryColor: COLOR_WHITE,  textTheme: screenWidth < 500 ? TEXT_THEME_DEFAULT : TEXT_THEME_SMALL, 
        fontFamily: "Montserrat", colorScheme: ColorScheme.fromSwatch().copyWith(secondary: COLOR_DARK_BLUE)
      ),
      home: const LandingScreen(),
    );
  }
}
