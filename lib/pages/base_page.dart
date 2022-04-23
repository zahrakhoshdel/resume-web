import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/widgets/custom_drawer.dart';
import 'package:resume_web/widgets/custom_nav_bar.dart';
import 'package:resume_web/widgets/custom_text.dart';

class BasePage extends StatelessWidget {
  final String number;
  final String title;
  final Size size;
  final Widget childWidget;

  const BasePage({
    Key? key,
    required this.number,
    required this.title,
    required this.size,
    required this.childWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: size.width < kMediumWidth ? const CustomDrawer() : null,
      resizeToAvoidBottomInset: false,
      // endDrawerEnableOpenDragGesture: false,
      body: Column(
        children: [
          CustomNavBar(size: size),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: number,
                          textsize: 20.0,
                          color: indicatorColor,
                          fontWeight: FontWeight.w700,
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        CustomText(
                          text: title,
                          textsize: size.width < kMediumWidth ? 20 : 26.0,
                          color: kTextColor,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(
                          width: size.width * 0.01,
                        ),
                        if (title != '')
                          size.width > kMediumWidth
                              ? Container(
                                  width: size.width / 4,
                                  height: 1.10,
                                  color: const Color(0xff303C55),
                                )
                              : Container(),
                      ],
                    ),
                  ),
                  childWidget,
                  const SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
