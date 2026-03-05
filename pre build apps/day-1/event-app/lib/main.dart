import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> photos = [
  "https://images.unsplash.com/photo-1516321318423-f06f85e504b3",
  "https://images.unsplash.com/photo-1521737604893-d14cc237f11d",
  "https://images.unsplash.com/photo-1556761175-b413da4baf72",
  "https://images.unsplash.com/photo-1504384308090-c894fdcc538d",
];

  final List<String> titles = [
    "Flutter Workshop",
    "Startup Meetup",
    "AI Bootcamp",
    "Hackathon 2026",
  ];

  final List<String> descriptions = [
    "Learn how to build mobile apps using Flutter.",
    "Meet founders and entrepreneurs from the startup ecosystem.",
    "Hands-on session on AI tools and development.",
    "24-hour coding challenge with exciting prizes.",
  ];

  final List<String> dates = [
    "10 March 2026",
    "15 March 2026",
    "20 March 2026",
    "25 March 2026",
  ];

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Event App'),
          backgroundColor: Colors.blue.shade500,
        ),
        backgroundColor: Colors.blue.shade300,
        body: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  color: Colors.blue.shade200,
                  padding: EdgeInsets.all(20),
                  margin: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(photos[index]),
                      SizedBox(height: 20),
                      Text(titles[index], style: TextStyle(fontSize: 30)),
                      SizedBox(height: 20),
                      Text(
                        descriptions[index],
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 20),
                      Text(
                        dates[index],
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Divider()
              ],
            );
          },
        ),
      ),
    );
  }
}
