import 'package:flutter/material.dart';

class GradientBody extends StatelessWidget {
  final Widget child;
  final List<Color> gradientColors;
  const GradientBody({this.child, this.gradientColors, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: gradientColors,
        ),
      ),
      child: SafeArea(child: child),
    );
  }
}
