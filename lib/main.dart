import 'package:flutter/material.dart';
import 'package:flutter_simple_test/counter_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Simple Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterPage(title: 'Flutter Simple Test'),
    );
  }
}
