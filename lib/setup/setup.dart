import 'package:flutter_app_starter/setup/flutter_binding_setup.dart';
import 'package:flutter_app_starter/setup/service_locator.dart';
import 'package:flutter_app_starter/setup/system_ui_overlay_setup.dart';

class Setup {
  Setup prepareServiceLocator() {
    ServiceLocatorSetup.prepare();
    return this;
  }

  Setup setStatusBarAsTransparent() {
    SystemUiOverlaySetup.setStatusBarAsTransparent();
    return this;
  }

  Setup setFullScreen() {
    SystemUiOverlaySetup.setFullScreen();
    return this;
  }

  Setup bindWidgetsBeforeRunApp() {
    FlutterFrameworkSetup.bindWidgetsBeforeRunApp();
    return this;
  }

  Setup configureFlutterErrorHandler() {
    FlutterFrameworkSetup.setErrorHandling();
    return this;
  }
}
