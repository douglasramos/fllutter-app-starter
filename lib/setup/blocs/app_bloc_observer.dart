import 'package:bloc/bloc.dart';
import 'package:flutter_app_starter/logger.dart';
import 'package:get/get.dart' as get_lib;

class AppBlocObserver extends BlocObserver {
  final logger = get_lib.Get.find<Logger>();

  @override
  void onEvent(Bloc bloc, Object event) {
    logger.info('onEvent $event');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    logger.info('onTransition $transition');
    super.onTransition(bloc, transition);
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    logger.info('onError $error');
    super.onError(cubit, error, stackTrace);
  }
}
