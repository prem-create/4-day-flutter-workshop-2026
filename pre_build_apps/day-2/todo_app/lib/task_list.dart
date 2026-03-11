import 'package:flutter/material.dart';
import 'package:todo_app/app_colors.dart';

class TaskList extends StatelessWidget {
  final String tasks;
  //time
  final String completionTime;
  //completion status
  final bool isTaskCompleted;

  const TaskList({
    super.key,
    required this.isTaskCompleted,
    required this.tasks,
    required this.completionTime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        contentPadding: EdgeInsets.all(7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8),
          side: BorderSide(
            color: isTaskCompleted ? textSecondaryColor : textPrimaryColor,
          ),
        ),
        leading: Icon(
          color: isTaskCompleted ? textSecondaryColor : textPrimaryColor,
          isTaskCompleted ? Icons.check_box_sharp : Icons.check_box_outline_blank,
        ),
        title: Text(
          tasks,
          style: TextStyle(
            color: isTaskCompleted ? textSecondaryColor : textPrimaryColor,
            decoration: isTaskCompleted
                ? TextDecoration.lineThrough
                : TextDecoration.none,
          ),
        ),
        trailing: Text(
          completionTime,
          style: TextStyle(
            color: isTaskCompleted ? textSecondaryColor : textPrimaryColor,
          ),
        ),
      ),
    );
  }
}

