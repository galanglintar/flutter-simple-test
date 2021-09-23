import 'package:flutter/material.dart';
import 'package:flutter_simple_test/build_ui.dart';
import 'package:flutter_simple_test/design_page.dart';

class CounterPage extends StatefulWidget {
  CounterPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: menuAction,
            itemBuilder: (BuildContext context) {
              return {'Show Design', 'Build UI'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  void menuAction(String value) {
    switch (value) {
      case 'Show Design':
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => DesignPage()));
        break;
      case 'Build UI':
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => BuildUi()));
        break;
      default:
        break;
    }
}
}