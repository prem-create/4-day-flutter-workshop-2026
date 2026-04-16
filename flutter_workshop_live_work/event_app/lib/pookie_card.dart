import 'package:flutter/material.dart';

class PookieCard extends StatelessWidget {
  final String imageLink;
  final String title;
  final String description;
  final Color containerColor;
  const PookieCard({
    super.key,
    required this.imageLink,
    required this.title,
    required this.description,
    required this.containerColor
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 450,
        color: containerColor,
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(imageLink),
            SizedBox(height: 20),
            Text(title, style: TextStyle(fontSize: 30)),
            SizedBox(height: 20),
            Text(description, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
