// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/widgets/custom_text.dart';

class Description extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  Description({Key? key, this.isMobile = false, this.isTablet = false})
      : super(key: key);

  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SizedBox(
      height: isMobile
          ? size.height * 0.82
          : isTablet
              ? size.height * 0.75
              : size.height * 0.78,
      width: isMobile
          ? size.width * 0.8
          : isTablet
              ? size.width * 0.8
              : size.width * 0.55,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.07,
          ),
          //About me desc
          aboutText(
              "Hello! I'm Zahra, a Freelancer based in Khurasan Razavi, IR.\n\nI have a bachelor's degree in information technology. I am interested in Computer Science, and also have skills and experience in artificial intelligence(AI), machine learning (ML) and image processing.\n\n"),
          aboutText(
              "Currently, i am learning flutter and dart and to make unique Android, Web, and Desktop Applications.\ni have the vision to improve myself every day and achieve great success with sheer hard work and dedication in the near future.\n\n"),
          aboutText(
              "Here are a few technologies I've been working with recently:\n\n"),

          SizedBox(
            height: isMobile ? size.height * 0.18 : size.height * 0.20,
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    technology(context, "Dart"),
                    technology(context, "Flutter"),
                    technology(context, "Firebase"),
                    technology(context, "UI (Figma)"),
                    technology(context, "HTML & (S)CSS"),
                    technology(context, "MYSQL, MONGODB"),
                    technology(context, "Git - Github"),
                  ],
                ),
                SizedBox(
                  width: size.width * 0.1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    technology(context, "C/C++, JavaScript"),
                    technology(context, "Python"),
                    technology(context, "React"),
                    technology(context, "Open CV"),
                    technology(context, "Machine Learning"),
                    technology(context, "Node.js, API"),
                    technology(context, "Matlab"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  aboutText(String text) {
    return CustomText(
      text: text,
      textsize: isMobile
          ? 16.0
          : isTablet
              ? 18.0
              : 20.0,
      color: const Color(0xff828DAA),
      // fontWeight: FontWeight.w500,
      letterSpacing: 0.75,
    );
  }

  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: indicatorColor.withOpacity(0.6),
          size: isMobile
              ? 14.0
              : isTablet
                  ? 16.0
                  : 18.0,
        ),
        SizedBox(
          width: size.width * 0.01,
        ),
        Text(
          text,
          style: TextStyle(
            color: kTechColor,
            letterSpacing: 1.75,
            fontSize: isMobile
                ? 14.0
                : isTablet
                    ? 16.0
                    : 18.0,
          ),
        )
      ],
    );
  }
}
