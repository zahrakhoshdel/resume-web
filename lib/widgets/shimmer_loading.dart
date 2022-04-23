import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoading extends StatefulWidget {
  final Color baseColor;
  final Widget child;
  const ShimmerLoading({
    Key? key,
    required this.baseColor,
    required this.child,
  }) : super(key: key);

  @override
  _ShimmerLoadingState createState() => _ShimmerLoadingState();
}

class _ShimmerLoadingState extends State<ShimmerLoading> {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        child: widget.child,
        baseColor: widget.baseColor,
        highlightColor: Colors.white);
  }
}
