import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_test/screens/settings_page.dart';

import '../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String userName = "Ankit";

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Provider.of<DarkModeModel>(context).isDark;
    final toggleDarkMode = Provider.of<DarkModeModel>(context, listen: false).toggle();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(isDarkMode ? 'Dark Mode' : 'Light mode'),
        ),
        body: Center(child: ElevatedButton(
          child: Text('Toggle'),
          onPressed: () => toggleDarkMode,
        )),
      ),
    );
  }
}
