import 'package:flutter/material.dart';
import 'package:flutter_app_starter/features/counter/counter_content.dart';
import 'package:flutter_app_starter/features/counter/cubit/counter_cubit.dart';
import 'package:flutter_app_starter/widgets/screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({Key key, this.title}) : super(key: key);

  final String title;
  final CounterCubit cubit = Get.put(CounterCubit());

  void _loadCounter() {
    Future.delayed(const Duration(seconds: 5), cubit.loadCounter);
  }

  void _incrementCounter() {
    cubit.increment();
  }

  @override
  Widget build(BuildContext context) {
    _loadCounter();

    return BlocBuilder<CounterCubit, CounterState>(
        cubit: Get.find(),
        builder: (context, counterState) {
          print(counterState.runtimeType);
          return Screen(
            appBar: AppBar(
              title: Text(title),
            ),
            child: counterState is CounterLoaded
                ? CounterContent(counter: counterState.counter)
                : Center(
                    child: SizedBox(
                      child: CircularProgressIndicator(),
                      height: 70.0,
                      width: 70.0,
                    ),
                  ),
            gradientColors: [Colors.white, Colors.grey[200]],
            floatingActionButton: FloatingActionButton(
              onPressed: () =>
                  counterState is CounterLoaded ? _incrementCounter() : null,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
          );
        });
  }
}
