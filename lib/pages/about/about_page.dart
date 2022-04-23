// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/pages/about/widgets/description.dart';
import 'package:resume_web/pages/about/widgets/profile_image.dart';

import 'package:resume_web/pages/base_page.dart';

class AboutPage extends StatelessWidget {
  static String id = '/about';

  AboutPage({Key? key}) : super(key: key);

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: BasePage(
        number: '01. ',
        title: "About Me",
        size: size,
        childWidget: loadBody(),
      ),
    );
  }

  loadBody() {
    if (size.width < kMediumWidth) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Center(child: Description(isMobile: true)),
          ),
        ],
      );
    } else if (size.width < kLargeWidth) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Description(isTablet: true),
        ],
      );
    } else {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Description(),
                const ProfileImage(),
              ],
            ),
          ),
        ],
      );
    }
  }
}
