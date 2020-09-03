import 'package:bloc/bloc.dart';
import 'app_bloc_observer.dart';

class BlocSetup {
  BlocSetup._();

  static void setObserver() {
    Bloc.observer = AppBlocObserver();
  }
}
