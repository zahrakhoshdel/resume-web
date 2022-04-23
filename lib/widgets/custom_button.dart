import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';

class CustomButton extends StatelessWidget {
  final bool isMobile;
  final String title;
  final VoidCallback onTapped;
  const CustomButton(
      {Key? key,
      this.isMobile = false,
      required this.title,
      required this.onTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTapped,
      hoverColor: accentColor.withOpacity(0.2),
      borderRadius: BorderRadius.circular(4.0),
      child: Container(
        alignment: Alignment.center,
        height: size.height * 0.09,
        width: isMobile ? size.width * 0.2 : size.width * 0.14,
        //padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          border: Border.all(
            color: accentColor,
          ),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: accentColor,
            letterSpacing: 2.75,
            wordSpacing: 1.0,
            fontSize: isMobile ? 15.0 : 20.0,
          ),
        ),
      ),
    );
  }
}
