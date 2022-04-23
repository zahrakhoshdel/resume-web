// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';

class CustomCircleButton extends StatelessWidget {
  VoidCallback onPressed;
  IconData icon;

  CustomCircleButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ElevatedButton(
      onPressed: onPressed,
      child: Icon(
        icon,
        size: size.width < kMediumWidth
            ? 20
            : size.width < kLargeWidth
                ? 25
                : 30,
      ),
      style: ElevatedButton.styleFrom(
        primary: accentColor,
        elevation: 5,
        padding: EdgeInsets.all(size.width < kMediumWidth
            ? size.width * 0.035
            : size.width < kLargeWidth
                ? size.width * 0.023
                : size.width * 0.018),
        shape: const CircleBorder(),
      ),
    );
  }
}
