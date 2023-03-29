import 'package:flutter/material.dart';
import 'package:flutter_app_starter/flows/counter/counter_content.dart';
import 'package:flutter_app_starter/flows/counter/state/counter_provider.dart';
import 'package:flutter_app_starter/widgets/layout/screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterScreen extends ConsumerWidget {
  CounterScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    return Screen(
      appBar: AppBar(
        title: Text(title),
      ),
      child: count.when(
        data: (value) => CounterContent(counter: value.value, title: title),
        loading: () => Center(
          child: SizedBox(
            child: CircularProgressIndicator(),
            height: 70.0,
            width: 70.0,
          ),
        ),
        error: (error, stack) => Center(
          child: Text(error.toString()),
        ),
      ),
      gradientColors: [Colors.white, Colors.grey[200]!],
      floatingActionButton: !count.isLoading
          ? FloatingActionButton(
              onPressed: () => ref.read(counterProvider.notifier).increment(),
              tooltip: 'Increment',
              child: Icon(Icons.add),
            )
          : null,
    );
  }
}
