import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SystemUiOverlaySetup {
  SystemUiOverlaySetup._();

  static void setStatusBarAsTransparent() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
  }

  static void setFullScreen() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }
}
