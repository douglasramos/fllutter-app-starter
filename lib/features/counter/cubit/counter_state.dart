part of 'counter_cubit.dart';

abstract class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object> get props => [];
}

class CounterInitial extends CounterState {}

class CounterLoaded extends CounterState {
  final int counter;

  CounterLoaded(this.counter);

  @override
  List<Object> get props => [counter];
}
