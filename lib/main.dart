import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_test/screens/LandingScreen.dart';
import 'package:ui_test/screens/house_one.dart';
import 'package:ui_test/screens/home_page.dart';
import 'package:ui_test/screens/ui_test.dart';
import 'dart:ui';

import 'package:ui_test/utils/constants.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => DarkModeModel(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI TEST APP',
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      home: const HomePage(),
    );
  }
}

class DarkModeModel extends ChangeNotifier {
  bool isDark = false;
  // isDark get() => _iskDark;

  void toggle() {
    isDark = !isDark;
    notifyListeners();
    print('toggle func called');
  }
}
