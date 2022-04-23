// ignore_for_file: use_key_in_widget_constructors, prefer_if_null_operators, unnecessary_null_comparison, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/widgets/custom_text.dart';

class FeatureProjectDesktop extends StatelessWidget {
  final bool isMobile;
  final String imagePath;
  final String title;
  final String projectDesc;
  final String tech1;
  final String tech2;
  final String tech3;
  final VoidCallback ontab;

  FeatureProjectDesktop(
      {this.isMobile = false,
      required this.imagePath,
      required this.ontab,
      required this.projectDesc,
      required this.title,
      required this.tech1,
      required this.tech2,
      required this.tech3});

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.65,
      child: Column(
        children: [
          Container(
            height: size.height * 0.6,
            width: size.width * 0.85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: kBackgroundColor2,
            ),
            child: Stack(
              children: [
                projectImage(),
                projectDescription(),
                projectTitle(),
                projectResources(),
                githubLink(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  projectImage() {
    return Positioned(
      top: size.height * 0.05,
      left: size.width * 0.05,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: SizedBox(
          height: size.height * 0.50,
          width: size.width * 0.45,
          child: Image(
            fit: BoxFit.fill,
            image: AssetImage(imagePath),
          ),
        ),
      ),
    );
  }

  projectDescription() {
    return Positioned(
      top: size.height * 0.17,
      right: size.width * 0.05,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          alignment: Alignment.center,
          height: size.height * 0.18,
          width: size.width * 0.45,
          color: secondaryColor,
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomText(
                  text: projectDesc,
                  textsize: 20.0,
                  color: Colors.white.withOpacity(0.4),
                  letterSpacing: 0.75,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  projectTitle() {
    return Positioned(
      top: size.height * 0.05,
      right: size.width * 0.05,
      child: SizedBox(
        height: size.height * 0.10,
        width: size.width * 0.28,
        child: Wrap(
          alignment: WrapAlignment.end,
          children: [
            CustomText(
              text: title,
              textsize: 27,
              color: Colors.grey,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.75,
            ),
          ],
        ),
      ),
    );
  }

  projectResources() {
    return Positioned(
      top: size.height * 0.36,
      right: size.width * 0.07,
      child: SizedBox(
        height: size.height * 0.08,
        width: size.width * 0.25,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            techWidget(tech1),
            SizedBox(
              width: size.width * 0.01,
            ),
            techWidget(tech2),
            SizedBox(
              width: size.width * 0.01,
            ),
            techWidget(tech3),
          ],
        ),
      ),
    );
  }

  githubLink() {
    return Positioned(
      top: size.height * 0.44,
      right: size.width * 0.07,
      child: IconButton(
        icon: const Icon(
          FontAwesomeIcons.github,
          size: 30,
        ),
        color: Colors.white.withOpacity(0.3),
        onPressed: ontab,
      ),
    );
  }

  techWidget(String tech) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kBackgroundColor.withOpacity(0.4),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: CustomText(
        text: tech == null ? "" : tech,
        textsize: 14,
        color: Colors.grey,
        letterSpacing: 1.75,
      ),
    );
  }
}
