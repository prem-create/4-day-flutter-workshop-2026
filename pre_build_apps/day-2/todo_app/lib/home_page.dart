import 'package:flutter/material.dart';
import 'package:todo_app/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hii Prem!',
          style: TextStyle(color: secondaryColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
        toolbarHeight: 100,
      ),
      backgroundColor: secondaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_circle_outline,
                  size: 120,
                  color: primaryColor,
                ),
                SizedBox(height: 20),
                Text(
                  'Welcome to ToDo',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: textPrimaryColor,
                  ),
                ),
                Text(
                  'Organize your task and stay productive every day',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: textSecondaryColor),
                ),
                SizedBox(height: 55),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Get Started',
                      style: TextStyle(color: textPrimaryColor, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
