import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Screen extends StatelessWidget {
  final Widget child;
  final Color? color;
  final List<Color>? gradientColors;
  final AppBar? appBar;
  final FloatingActionButton? floatingActionButton;

  final bool fullScreen;

  const Screen({
    required this.child,
    this.appBar,
    this.floatingActionButton,
    this.color,
    this.gradientColors,
    this.fullScreen = false,
    Key? key,
  })  : assert(color == null || gradientColors == null),
        super(key: key);

  BoxDecoration? boxDecoration() {
    return gradientColors != null
        ? BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: gradientColors!,
            ),
          )
        : null;
  }

  @override
  Widget build(BuildContext context) {
    if (fullScreen) {
      // GestureDetector is a possibility to
      // recognizes entire screen and detects the tap when you
      // tap anywhere on the screen
      // behavior: HitTestBehavior.opaque,
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    }

    return Scaffold(
      appBar: appBar,
      body: Container(
        decoration: boxDecoration(),
        color: color,
        child: child,
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
