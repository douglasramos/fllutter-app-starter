import 'package:flutter/material.dart';
import 'package:flutter_app_starter/flows/counter/counter_screen.dart';
import 'package:flutter_app_starter/widgets//layout/screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CounterScreen(title: 'Counter'),
                  ),
                ),
                child: Text('Go to Counter Screen'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
