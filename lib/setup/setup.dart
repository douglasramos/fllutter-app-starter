import 'package:flutter_app_starter/setup/flutter_binding_setup.dart';
import 'package:flutter_app_starter/setup/service_locator.dart';
import 'package:flutter_app_starter/setup/system_ui_overlay_setup.dart';

class Setup {
  static void prepareServiceLocator() {
    ServiceLocatorSetup.prepare();
  }

  static void setStatusBarAsTransparent() {
    SystemUiOverlaySetup.setStatusBarAsTransparent();
  }

  static void setFullScreen() {
    SystemUiOverlaySetup.setFullScreen();
  }

  static void bindWidgetsBeforeRunApp() {
    FlutterFrameworkSetup.bindWidgetsBeforeRunApp();
  }

  static void configureFlutterErrorHandler() {
    FlutterFrameworkSetup.setErrorHandling();
  }
}
