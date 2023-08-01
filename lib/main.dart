import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app_starter/flows/home/home_screen.dart';
import 'package:flutter_app_starter/logger.dart';
import 'package:flutter_app_starter/setup/setup.dart';
import 'package:flutter_app_starter/theme/colors.dart';
import 'package:flutter_app_starter/theme/text.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  Setup.configureFlutterErrorHandler();

  PlatformDispatcher.instance.onError = (Object error, StackTrace stackTrace) {
    Logger().error(error.toString(), error, stackTrace);
    return true;
  };

  Setup.bindWidgetsBeforeRunApp();
  Setup.prepareServiceLocator();
  Setup.setStatusBarAsTransparent();

  runApp(ProviderScope(
    child: App(),
  ));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App Starter',
      theme: ThemeData(
        textTheme: textTheme,
        primaryColor: AppColors.mainColor,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
