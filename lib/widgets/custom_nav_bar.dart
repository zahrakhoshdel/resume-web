import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/pages/home/home_page.dart';
import 'package:resume_web/widgets/custom_tab_bar.dart';

class CustomNavBar extends StatelessWidget {
  final Size size;
  const CustomNavBar({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kNavBarHeight,
      width: size.width,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: loadNavBar(context),
    );
  }

  loadNavBar(BuildContext context) {
    if (size.width < kMediumWidth) {
      return Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {
              kNavigator(HomePage.id);
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/profile.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      );
    } else if (size.width < kLargeWidth) {
      return Row(children: [
        const SizedBox(
          width: 20,
        ),
        InkWell(
            onTap: () {
              kNavigator(HomePage.id);
            },
            child: Image.asset('images/profile.png')),
        const Spacer(),
        const CustomTabBar(
          isLarge: false,
        ),
        const Spacer(),
        const SizedBox(
          width: 20,
        ),
      ]);
    } else {
      return Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          InkWell(
              onTap: () {
                kNavigator(HomePage.id);
              },
              child: Image.asset('images/profile.png')),
          const Spacer(),
          const CustomTabBar(
            isLarge: true,
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      );
    }
  }
}
