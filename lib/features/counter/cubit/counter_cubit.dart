import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  void loadCounter() => emit(_loadCounter());
  void increment() => emit(_increment());
  void decrement() => emit(_increment());

  CounterState _loadCounter() {
    if (state is CounterLoaded) {
      return state;
    } else {
      return CounterLoaded(0);
    }
  }

  CounterState _increment() =>
      CounterLoaded((state as CounterLoaded).counter + 1);

  CounterState _decrement() =>
      CounterLoaded((state as CounterLoaded).counter - 1);
}
