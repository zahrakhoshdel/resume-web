// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';

class FeatureProjectMobile extends StatelessWidget {
  final VoidCallback ontab;
  final String projectname;

  const FeatureProjectMobile({required this.ontab, required this.projectname});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: ontab,
        borderRadius: BorderRadius.circular(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Container(
            color: accentColor.withOpacity(0.3),
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: const Icon(
                      Icons.link_outlined,
                      color: accentColor,
                    ),
                    onPressed: ontab,
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      projectname,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.4),
                          fontSize: 16.0,
                          letterSpacing: 0.75,
                          fontWeight: FontWeight.w400),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
