import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/pages/about/about_page.dart';
import 'package:resume_web/pages/home/home_page.dart';
import 'package:resume_web/pages/projects/projects_page.dart';
import 'package:resume_web/widgets/tab_bar_option.dart';

class CustomTabBar extends StatelessWidget {
  final bool isLarge;
  const CustomTabBar({Key? key, required this.isLarge}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //customWidthSpace(),
        TabBarOption(
            onTapped: () {
              kNavigator(HomePage.id);
            },
            option: 'Home',
            isLarge: isLarge),
        customWidthSpace(),
        TabBarOption(
            onTapped: () {
              kNavigator(AboutPage.id);
            },
            option: 'About',
            isLarge: isLarge),
        customWidthSpace(),
        TabBarOption(
            onTapped: () {
              kNavigator(ProjectsPage.id);
            },
            option: 'Projects',
            isLarge: isLarge),
        customWidthSpace(),
      ],
    );
  }

  customWidthSpace() {
    return SizedBox(
      width: isLarge ? 10 : 5,
    );
  }
}
