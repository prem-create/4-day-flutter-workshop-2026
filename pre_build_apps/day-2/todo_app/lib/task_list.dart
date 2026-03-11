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
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Card(
        color: Color(0xFF201F1F),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    isTaskCompleted
                        ? Icons.check_box_sharp
                        : Icons.check_box_outline_blank,
                  ),
                  SizedBox(width: 20),
                  Text(
                    tasks,
                    style: TextStyle(
                      color: isTaskCompleted
                          ? textSecondaryColor
                          : textPrimaryColor,
                      decoration: isTaskCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                ],
              ),
              Text(
                completionTime,
                style: TextStyle(
                  color: isTaskCompleted
                      ? textSecondaryColor
                      : textPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
