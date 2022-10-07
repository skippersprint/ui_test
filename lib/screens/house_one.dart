import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_test/custom/BorderBox.dart';
import 'package:ui_test/custom/option_button.dart';
import 'package:ui_test/utils/constants.dart';
import 'package:ui_test/utils/widget_functions.dart';

class HouseScreen extends StatelessWidget {
  const HouseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    final Size size = mediaQuery.size * mediaQuery.devicePixelRatio;
    const double padding = 25;
    const sidePadding = EdgeInsets.symmetric(horizontal: padding);
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
              width: size.width,
              height: size.height,
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(image: AssetImage('assets/images/image_1.jpg')),
                      addVerticalSpace(30),
                      Padding(
                        padding: sidePadding,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '\$200,000',
                                  style: themeData.textTheme.headline1,
                                ),
                                Text('\$Jenison, MI 49428, SF')
                              ],
                            ),
                            BorderBox(
                              child: Text(
                                '20 Hours Ago',
                                style: themeData.textTheme.headline4,
                              ),
                            )
                          ],
                        ),
                      ),
                      addVerticalSpace(30),
                      Padding(
                        padding: sidePadding,
                        child: Text(
                          'House Information',
                          style: themeData.textTheme.headline3,
                        ),
                      ),
                      addVerticalSpace(25),
                      SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          children: [
                            Row(
                                children: ['1416', '4', '2', '1']
                                    .map((e) => Padding(
                                          padding: const EdgeInsets.only(
                                              left: padding),
                                          child: BorderBox(
                                            width: 100,
                                            height: 100,
                                            child: Text(
                                              e,
                                              style:
                                                  themeData.textTheme.headline2,
                                            ),
                                          ),
                                        ))
                                    .toList()),
                                    addVerticalSpace(15),
                            Row(
                                children: [
                              'Square Foot',
                              'Bedrooms',
                              'Bathrooms',
                              'Garage'
                            ]
                                    .map((e) => SizedBox(
                                        width: 120,
                                        height: 60,
                                        child: Text(e, style: themeData.textTheme.headline5,)))
                                    .toList())
                          ],
                        ),
                      ),
                      const Padding(
                        padding: sidePadding,
                        child: Text('Lorem Ipsum is simply dummy text of the pr, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unch , when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unch ',
                        textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      addVerticalSpace(padding),
                      Padding(
                          padding: sidePadding,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BorderBox(child: Icon(Icons.arrow_back_outlined)),
                              BorderBox(child: Icon(Icons.favorite_border))
                            ],
                          )),
                      addVerticalSpace(size.height * 0.3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OptionButton(
                            icon: (Icons.message),
                            text: 'Message',
                            width: size.width * 0.12,
                          ),
                          addHorizontalSpace(12),
                          OptionButton(
                            icon: Icons.call,
                            text: 'Call',
                            width: size.width * 0.12,
                          )
                        ],
                      ),
                      
                    ],
                  ),
                ],
              ))),
    );
  }
}
