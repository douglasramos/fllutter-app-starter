import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_provider.freezed.dart';
part 'counter_provider.g.dart';

@freezed
class Count with _$Count {
  factory Count({required int value}) = _Count;

  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);
}

class CounterNotfier extends AsyncNotifier<Count> {
  CounterNotfier() : super();

  void increment() async {
    final value = state.asData!.value.value;
    state = AsyncValue.data(Count(value: value + 1));
  }

  @override
  FutureOr<Count> build() {
    return Future.delayed(const Duration(seconds: 5), () => Count(value: 100));
  }
}

final counterProvider =
    AsyncNotifierProvider<CounterNotfier, Count>(() => CounterNotfier());
