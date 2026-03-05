import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int tapCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          tapCount = tapCount + 1;
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text('no of time you have tapped: $tapCount'),
      ),
    );
  }
}
