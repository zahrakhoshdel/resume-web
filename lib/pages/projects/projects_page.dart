// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/pages/base_page.dart';
import 'package:resume_web/pages/projects/widgets/project_view_mobile.dart';
import 'package:resume_web/pages/projects/widgets/project_view_desktop.dart';

class ProjectsPage extends StatelessWidget {
  static String id = '/projects';
  ProjectsPage({Key? key}) : super(key: key);
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: BasePage(
        number: '02. ',
        title: "Some Things I've Built",
        size: size,
        childWidget: loadBody(),
      ),
    );
  }

  loadBody() {
    if (size.width < kLargeWidth) {
      return SizedBox(
        width: size.width * 0.6,
        height: size.height * 2,
        child: Stack(
          // fit: StackFit.expand,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: ProjectViewMobile(),
            ),
          ],
        ),
      );
    } else {
      return SizedBox(
        width: size.width,
        height: size.height * 0.88,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ProjectViewDesktop(),
          ],
        ),
      );
    }
  }
}
