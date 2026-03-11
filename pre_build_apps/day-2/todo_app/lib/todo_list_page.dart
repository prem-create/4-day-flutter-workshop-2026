import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo_app/app_colors.dart';
import 'package:todo_app/app_data.dart';
import 'package:todo_app/task_list.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  //controllers
  TextEditingController taskController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  //FormField key
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        title: Text(
          'ToDo List',
          style: TextStyle(color: secondaryColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
        toolbarHeight: 100,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Form(
                key: _formKey,
                child: AlertDialog(
                  title: Text('Add a new task'),

                  content: Column(
                    children: [
                      TextFormField(
                        controller: taskController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Enter the task'),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please define task';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: timeController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Enter time'),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'plese define time';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),

                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          if (timeController.text.isNotEmpty &&
                              taskController.text.isNotEmpty) {
                            addTask(taskController.text.toString());
                            addTime(timeController.text.toString());
                            Navigator.pop(context);
                            setState(() {});
                            taskController.text = '';
                            timeController.text = '';
                          }
                        }
                      },
                      child: Text('add task'),
                    ),
                  ],
                ),
              );
            },
          );
        },
        backgroundColor: primaryColor,
        shape: CircleBorder(),
        child: Icon(Icons.add, color: textPrimaryColor),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Today',
                style: TextStyle(
                  color: textPrimaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'March,5,2026',
                style: TextStyle(
                  color: textSecondaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      hoverColor: primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      onTap: () {
                        setTaskCompletion(index);
                        setState(() {});
                        log(isTaskCompleted[index].toString());
                      },
                      child: TaskList(
                        completionTime: completionTime[index],
                        tasks: tasks[index],
                        isTaskCompleted: isTaskCompleted[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
