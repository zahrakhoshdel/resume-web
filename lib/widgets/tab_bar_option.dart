import 'package:flutter/material.dart';

class TabBarOption extends StatelessWidget {
  final String option;
  final VoidCallback onTapped;
  final bool isLarge;
  const TabBarOption({
    Key? key,
    required this.onTapped,
    required this.option,
    required this.isLarge,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTapped,
        child: Text(
          option,
          style: TextStyle(
            color: Colors.white,
            fontSize: isLarge ? 20 : 15,
          ),
        ),
      ),
    );
  }
}
