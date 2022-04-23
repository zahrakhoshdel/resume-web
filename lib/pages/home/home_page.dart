// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/pages/base_page.dart';
import 'package:resume_web/pages/home/widgets/introduction_widget.dart';
import 'package:resume_web/pages/home/widgets/name_widget.dart';

class HomePage extends StatelessWidget {
  static String id = '/home';
  HomePage({Key? key}) : super(key: key);
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: BasePage(
        number: '',
        title: '',
        size: size,
        childWidget: loadBody(),
      ),
    );
  }

  loadBody() {
    if (size.width < kMediumWidth) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NameWidget(isMobile: true),
          const IntroductionWidget(isMobile: true),
        ],
      );
    } else if (size.width < kLargeWidth) {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.02,
              vertical: size.height * 0.06,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                NameWidget(
                  isTablet: true,
                ),
                const IntroductionWidget(
                  isTablet: true,
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.02,
              vertical: size.height * 0.06,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                NameWidget(),
                const IntroductionWidget(),
              ],
            ),
          ),
        ],
      );
    }
  }
}
