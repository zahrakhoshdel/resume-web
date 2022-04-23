import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/widgets/custom_button.dart';
import 'package:resume_web/widgets/custom_text.dart';
import 'package:resume_web/widgets/shimmer_loading.dart';

class IntroductionWidget extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  const IntroductionWidget({
    Key? key,
    this.isMobile = false,
    this.isTablet = false,
  }) : super(key: key);
  final introWidget =
      "I am Developer  and a Learning Enthusiast, who is obsessed with the idea of improving himself and wants a platform to grow and excel.\n";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = isMobile
        ? size.width * 0.75
        : isTablet
            ? size.width * 0.55
            : size.width * 0.45;
    double height = isMobile ? size.height * 1.0 : size.height * 0.55;
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      width: width,
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: "- Introduction",
            textsize: 16.0,
            color: indicatorColor,
            letterSpacing: 3.0,
          ),
          const SizedBox(
            height: 4.0,
          ),
          CustomText(
            text: "I Am Fullstack Developer",
            textsize: isMobile
                ? 40.0
                : isTablet
                    ? 45.0
                    : 50.0,
            color: kTextColor,
            fontWeight: FontWeight.w900,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            introWidget,
            style: TextStyle(
              color: Colors.grey,
              fontSize: isMobile
                  ? 16.0
                  : isTablet
                      ? 18.0
                      : 20.0,
              letterSpacing: 2.75,
              wordSpacing: 0.75,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ShimmerLoading(
              baseColor: accentColor,
              child: Container(
                width: size.width * 0.1,
                height: 10,
                color: accentColor,
              )),
          const SizedBox(
            height: 20,
          ),
          CustomButton(isMobile: isMobile, title: "Resume", onTapped: () {})
        ],
      ),
    );
  }
}
