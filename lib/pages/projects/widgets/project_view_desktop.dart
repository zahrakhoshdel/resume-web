// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:resume_web/pages/projects/widgets/feature_project_desktop.dart';
import 'package:resume_web/widgets/custom_button.dart';
import 'package:resume_web/widgets/url_method.dart';

class ProjectViewDesktop extends StatelessWidget {
  ProjectViewDesktop({Key? key}) : super(key: key);
  Method method = Method();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      shrinkWrap: true,
      // physics: NeverScrollableScrollPhysics(),
      children: [
        SizedBox(
          height: size.height * 0.06,
        ),
        FeatureProjectDesktop(
          imagePath: "images/bmi_clac.png",
          ontab: () {
            method.launchURL('https://github.com/zahrakhoshdel/bmi_calculator');
          },
          projectDesc: "A BMI calculator app developed with Flutter.",
          title: "BMI Calculator",
          tech1: "Dart",
          tech2: "Flutter",
          tech3: "API",
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        FeatureProjectDesktop(
          imagePath: "images/chat_app.png",
          ontab: () {
            method.launchURL('https://github.com/zahrakhoshdel/chat_app');
          },
          projectDesc: "a chat app developed with Flutter and Firebase.",
          title: "Chat App",
          tech1: "Dart",
          tech2: "Flutter",
          tech3: "Firebase",
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        FeatureProjectDesktop(
          imagePath: "images/GUI.png",
          ontab: () {
            method.launchURL(
                'https://github.com/zahrakhoshdel/brain-tumour-detection-and-classification');
          },
          projectDesc:
              "Automatically classifies brain tumor images into malignant and benign using Matlab",
          title: "Brain Tumour Detection And Classification ",
          tech1: "GUI",
          tech2: "ML",
          tech3: "MATLAB",
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        FeatureProjectDesktop(
          imagePath: "images/weather_app.png",
          ontab: () {
            method.launchURL('https://github.com/zahrakhoshdel/weather-app');
          },
          projectDesc: "Weather App Built with Flutter and OpenWeatherMap API",
          title: "Weather App ",
          tech1: "Dart",
          tech2: "Flutter",
          tech3: "API",
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        FeatureProjectDesktop(
          imagePath: "images/1.png",
          ontab: () {
            method.launchURL(
                'https://github.com/zahrakhoshdel/Automated-Liver-Tumor-Detection');
          },
          projectDesc:
              "a computer-aided diagnosis (CAD) system for Abdominal CT Liver Images",
          title: "Automated Liver Tumor Detection",
          tech1: "MATLAB",
          tech2: "ML",
          tech3: "DIP",
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        SizedBox(
          height: size.height * 0.4,
        ),
        CustomButton(
            isMobile: true,
            title: 'View More',
            onTapped: () {
              method.launchURL("https://github.com/zahrakhoshdel");
            }),
      ],
    );
  }
}
