import 'package:flutter/material.dart';
import 'package:notes_app/constants/app_colors.dart';
import 'package:notes_app/constants/app_spacing.dart';
import 'package:notes_app/data/dummy_data.dart';

class NotesViewPage extends StatefulWidget {
  final int? index;
  const NotesViewPage({super.key, this.index});

  @override
  State<NotesViewPage> createState() => _NotesViewPageState();
}

class _NotesViewPageState extends State<NotesViewPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController noteController = TextEditingController();

  @override
  void initState() {
    if (widget.index != null) {
      final int finalIndex = widget.index!;
      titleController.text = titles[finalIndex];
      noteController.text = notes[finalIndex];
    }
    super.initState();
  }

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
            onPressed: () {
              Navigator.pop(context, {
                "title": titleController.text,
                "note": noteController.text,
              });
            },
            child: Text("Save", style: TextStyle(color: AppColors.primary)),
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
                controller: titleController,
                expands: false,
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
                controller: noteController,
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
