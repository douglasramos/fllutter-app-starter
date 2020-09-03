import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_app_starter/logger.dart';
import 'package:get/get.dart';

class ServiceLocatorSetup {
  ServiceLocatorSetup._();

  static void prepare() {
    Get.lazyPut<FirebaseAnalytics>(() => FirebaseAnalytics());
    Get.lazyPut<FirebaseFirestore>(() => FirebaseFirestore.instance);
    Get.lazyPut<Logger>(() => Logger());
  }
}
