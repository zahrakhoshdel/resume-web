// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double textsize;
  final Color color;
  final double letterSpacing;
  final FontWeight fontWeight;
  const CustomText({
    required this.text,
    required this.textsize,
    required this.color,
    this.letterSpacing = 0.10,
    this.fontWeight = FontWeight.w400,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: textsize,
          letterSpacing: letterSpacing,
          fontWeight: fontWeight),
    );
  }
}
