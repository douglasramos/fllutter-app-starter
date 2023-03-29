import 'dart:async';

import 'package:flutter/material.dart';

class FlutterFrameworkSetup {
  FlutterFrameworkSetup._();

  static void bindWidgetsBeforeRunApp() {
    // necessary to get FirestoreInstance before the RunApp
    WidgetsFlutterBinding.ensureInitialized();
  }

  static void setErrorHandling() {
    // This captures errors reported by the Flutter framework.
    FlutterError.onError = (FlutterErrorDetails details) {
      Zone.current.handleUncaughtError(details.exception, details.stack!);
    };
  }
}
