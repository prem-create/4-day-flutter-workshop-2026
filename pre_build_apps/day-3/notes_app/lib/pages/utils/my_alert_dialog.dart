import 'package:flutter/material.dart';
import 'package:notes_app/constants/app_colors.dart';

class MyAlertDialog extends StatelessWidget {
  final String text;
  final VoidCallback voidCallback;
  final Color? color;
  const MyAlertDialog({
    super.key,
    required this.text,
    required this.voidCallback,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.primary,
      icon: CircleAvatar(
        backgroundColor: AppColors.backgroundPrimary,
        radius: 50,
        child: Icon(
          Icons.question_mark_rounded,
          size: 50,
          color: color ?? AppColors.textPrimary,
        ),
      ),
      title: Text(text, style: TextStyle(color: AppColors.textPrimary)),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            "No",
            style: TextStyle(color: AppColors.backgroundPrimary),
          ),
        ),
        TextButton(
          onPressed: voidCallback,
          child: Text(
            "Yes",
            style: TextStyle(color: AppColors.backgroundPrimary),
          ),
        ),
      ],
    );
  }
}
