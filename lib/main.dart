import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/pages/about/about_page.dart';
import 'package:resume_web/pages/home/home_page.dart';
import 'package:resume_web/pages/projects/projects_page.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: HomePage.id,
          page: () => HomePage(),
        ),
        GetPage(
          name: AboutPage.id,
          page: () => AboutPage(),
        ),
        GetPage(
          name: ProjectsPage.id,
          page: () => ProjectsPage(),
        ),
      ],
      initialRoute: HomePage.id,
      defaultTransition: Transition.fadeIn,
    );
  }
}
