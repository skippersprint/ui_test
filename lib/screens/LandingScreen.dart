import 'package:flutter/material.dart';
import 'package:ui_test/custom/BorderBox.dart';
import 'package:ui_test/utils/constants.dart';
import 'package:ui_test/utils/widget_functions.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    final double padding = 25;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addVerticalSpace(padding),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BorderBox(
                    height: 50.0,
                    width: 50.0,
                    child: Icon(
                      Icons.menu,
                      color: COLOR_BLACK,
                    ),
                  ),
                  BorderBox(
                    height: 50.0,
                    width: 50.0,
                    child: Icon(
                      Icons.settings,
                      color: COLOR_BLACK,
                    ),
                  )
                ],
              ),
            ),
            addVerticalSpace(padding),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'City',
                style: themeData.textTheme.bodyText2),
            )
          ]),
        ),
      ),
    );
  }
}
