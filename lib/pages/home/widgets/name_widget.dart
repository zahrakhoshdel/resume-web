// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/widgets/custom_circle_button.dart';
import 'package:resume_web/widgets/custom_text.dart';
import 'package:resume_web/widgets/shimmer_loading.dart';
import 'package:resume_web/widgets/url_method.dart';

class NameWidget extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  NameWidget({
    Key? key,
    this.isMobile = false,
    this.isTablet = false,
  }) : super(key: key);

  Method method = Method();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:
            isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: isMobile ? Alignment.center : Alignment.topLeft,
            child: ShimmerLoading(
              baseColor: accentColor,
              child: Icon(
                FontAwesomeIcons.laptopCode,
                size: isMobile ? 40 : 50,
                color: accentColor,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          ShimmerLoading(
            baseColor: shimmerBaseColor,
            child: CustomText(
              text: "Zahra",
              textsize: isMobile
                  ? 45
                  : isTablet
                      ? 50
                      : 68.0,
              color: kTextColor,
              fontWeight: FontWeight.w900,
            ),
          ),
          ShimmerLoading(
            baseColor: shimmerBaseColor,
            child: CustomText(
              text: "Khoshdel",
              textsize: isMobile
                  ? 45
                  : isTablet
                      ? 50
                      : 68.0,
              color: kTextColor,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          socialAccounts()
        ],
      ),
    );
  }

  socialAccounts() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomCircleButton(
            icon: FontAwesomeIcons.github,
            onPressed: () {
              method.launchURL("https://github.com/zahrakhoshdel");
            }),
        CustomCircleButton(
            icon: FontAwesomeIcons.linkedinIn,
            onPressed: () {
              method.launchURL("www.linkedin.com/in/zahrakhoshdel");
            }),
        CustomCircleButton(
            icon: Icons.mail,
            onPressed: () {
              method.launchURL("mailto:imzahrakhoshdel@gmail.com");
            }),
        CustomCircleButton(icon: FontAwesomeIcons.phone, onPressed: () {}),
      ],
    );
  }
}
