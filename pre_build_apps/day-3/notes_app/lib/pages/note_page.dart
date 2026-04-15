import 'package:flutter/material.dart';
import 'package:notes_app/constants/app_colors.dart';
import 'package:notes_app/constants/app_spacing.dart';

class NotePage extends StatefulWidget {
  final String? title;
  final String? note;
  const NotePage({super.key, this.title, this.note});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundPrimary,

      //app Bar
      appBar: AppBar(
        backgroundColor: AppColors.backgroundPrimary,
        iconTheme: IconThemeData(color: AppColors.textPrimary),
        title: Text(
          "Notes",
          style: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        titleSpacing: 0.0,
        actions: [
          TextButton(
            onPressed: () {},
            child: TextButton(
              onPressed: () {},
              child: Text("Save", style: TextStyle(color: AppColors.primary)),
            ),
          ),
        ],
        actionsPadding: EdgeInsets.only(right: AppSpacing.md),
      ),

      //scaffold body
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Title:",
              style: TextStyle(
                fontSize: AppSpacing.lg,
                color: AppColors.textPrimary,
              ),
            ),
            SizedBox(
              height: 50,
              child: TextField(
                expands: true,
                maxLines: null,
                cursorColor: AppColors.textPrimary,
                style: TextStyle(color: AppColors.textSecondary),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Write your note's title here",
                ),
              ),
            ),
            Text(
              "Note:",
              style: TextStyle(
                fontSize: AppSpacing.lg,
                color: AppColors.textPrimary,
              ),
            ),
            Expanded(
              child: TextField(
                expands: true,
                maxLines: null,
                cursorColor: AppColors.textPrimary,
                style: TextStyle(color: AppColors.textSecondary),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Write your note here",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
