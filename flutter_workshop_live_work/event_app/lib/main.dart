import 'package:event_app/dummy_data.dart';
import 'package:event_app/pookie_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Event App", style: TextStyle(fontSize: 30)),
        ),
        body: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context, index) {
            print(index);
            return PookieCard(
              imageLink: photos[index],
              title: titles[index],
              description: descriptions[index],
              containerColor: colors[index],
            );
          },
        ),
      ),
    );
  }
}
