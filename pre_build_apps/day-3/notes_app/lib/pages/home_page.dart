import 'package:flutter/material.dart';
import 'package:notes_app/constants/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundPrimary,
      body: Container(
        height: 20,
        width: 200,
        color: AppColors.textPrimary,
      ),
    );
  }
}
