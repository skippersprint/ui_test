import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_test/custom/BorderBox.dart';
import 'package:ui_test/custom/option_button.dart';
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
                      const Image(
                          image: AssetImage('assets/images/image_1.jpg')),
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
                                const Text('\$Jenison, MI 49428, SF')
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
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: const [
                              InfoTile(
                                content: '1416',
                                name: 'Square Foot',
                              ),
                              InfoTile(
                                content: '5',
                                name: 'Fuck Rooms',
                              ),
                              InfoTile(
                                content: '1',
                                name: 'Helipad',
                              ),
                              InfoTile(
                                content: '5',
                                name: 'Car Garage',
                              ),
                            ],
                          )),
                      addVerticalSpace(20),
                      const Padding(
                        padding: sidePadding,
                        child: Text(
                          'Lorem Ipsum is simply dummy text of the pr,  make a type sh  uk fj ghjghj tyjhg pecimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unch , when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unch ',
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
                            children: const [
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

class InfoTile extends StatelessWidget {
  final String? content;
  final String? name;
  final EdgeInsets? padding;
  const InfoTile({super.key, this.content, this.name, this.padding});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    final titleSize = size.width * 0.25;
    return Container(
        margin: const EdgeInsets.only(left: 25),
        padding: padding ?? const EdgeInsets.all(8.0),
        child: Column(children: [
          BorderBox(
              width: titleSize,
              height: titleSize,
              child: Text(
                content!,
                style: themeData.textTheme.headline3,
              )),
          addVerticalSpace(15),
          Text(
            name!,
            style: themeData.textTheme.headline5,
          )
        ]));
  }
}
