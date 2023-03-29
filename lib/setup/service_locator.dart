import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_app_starter/logger.dart';
import 'package:get_it/get_it.dart';

class ServiceLocatorSetup {
  ServiceLocatorSetup._();

  static void prepare() {
    GetIt.I.registerLazySingleton(() => FirebaseAnalytics.instance);
    GetIt.I.registerLazySingleton(() => FirebaseFirestore.instance);
    GetIt.I.registerLazySingleton(() => Logger());
  }
}
