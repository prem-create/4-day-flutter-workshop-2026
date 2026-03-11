# Flutter ToDo App

This is a simple **ToDo List App built with Flutter** to demonstrate how state and user interaction work in a real application.

The app allows users to **add tasks, assign a completion time, and mark tasks as completed** by tapping on them.

## What You Will Learn

- Working with **Stateful Widgets**
- Using **setState()** to update UI dynamically
- Handling **user input with TextFormField**
- Using **ListView.builder** to display dynamic lists
- Implementing **Form validation**
- Navigating between screens with **Navigator**

## How the App Works

- The app starts with a **Welcome screen** where the user can press **Get Started**.
- The user is taken to the **ToDo List page**.
- Pressing the **Floating Action Button (+)** opens a dialog to add a task.
- The user enters the **task name and completion time**.
- The task is added to the list and displayed on the screen.
- When the user taps on a task, it **marks the task as completed** and updates the UI.

## Key Concept

`setState()` is used to update the UI whenever a new task is added or a task is marked as completed.

Example:

```dart
setState(() {});
```


## Output

**The app includes:**

- A Welcome screen
 
- A ToDo List page
 
- A dynamic list of tasks
 
- Ability to mark tasks as completed