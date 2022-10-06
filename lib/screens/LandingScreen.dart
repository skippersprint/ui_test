import 'package:flutter/material.dart';
import 'package:ui_test/custom/BorderBox.dart';
import 'package:ui_test/custom/option_button.dart';
import 'package:ui_test/utils/constants.dart';
import 'package:ui_test/utils/sample_data.dart';
import 'package:ui_test/utils/widget_functions.dart';

import '../utils/custom_functions.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    const double padding = 25;
    const sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            addVerticalSpace(padding),
            Padding(
              padding: sidePadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
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
              padding: sidePadding,
              child: Text('City', style: themeData.textTheme.bodyText2),
            ),
            Padding(
              padding: sidePadding,
              child:
                  Text('San Francisco', style: themeData.textTheme.headline1),
            ),
            addVerticalSpace(10),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: ['<\$20,000', 'For sale', '3-4 Beds', '>1000 sqft']
                      .map((e) => ChoiceOption(text: e))
                      .toList()),
            ),
            addVerticalSpace(10),
            Expanded(
              child: Padding(
                padding: sidePadding,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                    itemCount: RE_DATA.length,
                    itemBuilder: ((context, index) {
                      return RealEstateItem(itemData: RE_DATA[index]);
                    })),
              ),
            )
          ]),
          Positioned(
            bottom: 20,
            width: size.width,
            child: Center(
              child: OptionButton(
                icon: Icons.map_rounded,
                text: "Map View",
                width: size.width*0.32,
              ),
            ))
          ],)
              
        ),
      ),
    );
  }
}

class ChoiceOption extends StatelessWidget {
  const ChoiceOption({super.key, required this.text});

  final String? text;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: COLOR_GREY.withAlpha(25)),
      margin: const EdgeInsets.only(left: 25),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      child: Text(
        text!,
        style: themeData.textTheme.headline5,
      ),
    );
  }
}

class RealEstateItem extends StatelessWidget {
  const RealEstateItem({super.key, required this.itemData});

  final dynamic itemData;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(itemData['image'])),
            const Positioned(
                top: 15,
                right: 15,
                child: BorderBox(
                  width: 50,
                  height: 50,
                  child: Icon(
                    Icons.favorite_border,
                    color: COLOR_BLACK,
                  ),
                ))
          ],
        ),
        addVerticalSpace(15),
        Row(
          children: [
            Text(
              formatCurrency(itemData["amount"]),
              style: themeData.textTheme.headline1,
            ),
            addHorizontalSpace(10),
            Text(
              '${itemData["address"]}',
              style: themeData.textTheme.bodyText2,
            )
          ],
        ),
        Text(
          '${itemData["bedrooms"]} bedrooms / ${itemData["bathrooms"]} bathrooms / ${itemData["area"]} sqft',
          style: themeData.textTheme.headline5,
        )
      ]),
    );
  }
}
