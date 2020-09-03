import 'package:flutter/material.dart';
import 'package:flutter_app_starter/widgets/screen.dart';

class ScreenWithLoading extends StatelessWidget {
  final Color screenColor;

  const ScreenWithLoading({this.screenColor = Colors.white, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Screen(
      color: Colors.white,
      child: Center(
        child: SizedBox(
          child: CircularProgressIndicator(),
          height: 70.0,
          width: 70.0,
        ),
      ),
    );
  }
}
