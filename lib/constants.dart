import 'package:flutter/material.dart';
import 'package:get/get.dart';

const double kSmallWidth = 360;
const double kMediumWidth = 720;
const double kLargeWidth = 1250;

const double kNavBarHeight = 60;
const double kFootBarHeight = 650;

const Color kTextColor = Color(0xffCCD6F6);
const Color kTechColor = Color(0xff717C99);

const Color primaryColor = Color(0xff252733);
const Color secondaryColor = Color(0xff333645);
const Color accentColor = Color(0xFFAB47BC);
// const Color indicatorColor = Color(0xff64FFDA);
const Color indicatorColor = Color(0xff41FBDA);

const Color shimmerBaseColor = Color(0xFF8C8F93);

const Color kBackgroundColor = Color(0xFF2A292A);
const Color kBackgroundColor2 = Color(0xFF464346);

void kNavigator(String destination) {
  Get.toNamed(destination);
}
