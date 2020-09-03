import 'package:flutter/material.dart';
import 'package:flutter_app_starter/features/counter/counter_screen.dart';
import 'package:flutter_app_starter/widgets/screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Screen(
      appBar: AppBar(
        title: Text('Home screen'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to The Home Screen'),
            Container(
              child: RaisedButton(
                onPressed: () => Get.to(
                    CounterScreen(
                      title: 'Counter Screen',
                    ),
                    transition: Transition.leftToRight),
                child: Text('Go to Counter Screen'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
