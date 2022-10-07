import 'package:flutter/material.dart';
import 'package:ui_test/utils/constants.dart';
import 'package:ui_test/utils/widget_functions.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({super.key, this.width, this.icon, this.text});

  final String? text;
  final IconData? icon;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(COLOR_BLACK),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
        onPressed: null,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(
              icon,
              color: COLOR_WHITE,
            ),
            addHorizontalSpace(10),
            Text(
              text!,
              style: const TextStyle(color: COLOR_WHITE),
            )
          ]),
        ),
      ),
    );
  }
}
