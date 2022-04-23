// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:resume_web/pages/projects/widgets/feature_project_mobile.dart';
import 'package:resume_web/widgets/custom_button.dart';
import 'package:resume_web/widgets/url_method.dart';

class ProjectViewMobile extends StatelessWidget {
  Method method = Method();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(children: [
      FeatureProjectMobile(
        ontab: () {
          method.launchURL('https://github.com/zahrakhoshdel/bmi_calculator');
        },
        projectname: 'BMI Calculator',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      FeatureProjectMobile(
        ontab: () {
          method.launchURL('https://github.com/zahrakhoshdel/chat_app');
        },
        projectname: 'Chat App',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      FeatureProjectMobile(
        ontab: () {
          method.launchURL(
              'https://github.com/zahrakhoshdel/brain-tumour-detection-and-classification');
        },
        projectname: 'Brain Tumour Detection And Classification',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      FeatureProjectMobile(
        ontab: () {
          method.launchURL('https://github.com/zahrakhoshdel/weather-app');
        },
        projectname: 'Weather App',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      FeatureProjectMobile(
        ontab: () {
          method.launchURL(
              'https://github.com/zahrakhoshdel/Automated-Liver-Tumor-Detection');
        },
        projectname: 'Automated Liver Tumor Detection',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      CustomButton(
          isMobile: true,
          title: 'View More',
          onTapped: () {
            method.launchURL("https://github.com/zahrakhoshdel");
          }),
    ]);
  }
}
