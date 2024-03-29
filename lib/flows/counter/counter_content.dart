import 'package:flutter/material.dart';

class CounterContent extends StatelessWidget {
  CounterContent({
    Key? key,
    required this.counter,
    required this.title,
  }) : super(key: key);

  final int counter;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
