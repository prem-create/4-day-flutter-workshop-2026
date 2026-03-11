//tasks
  List<String> tasks = [];
  //time
  List<String> completionTime = [];
  //task completion status
  List<bool> isTaskCompleted = [];

  //add task
  void addTask(String task) {
    tasks.add(task);
    isTaskCompleted.add(false);
  }

  //add time
  void addTime(String time) {
    completionTime.add(time);
  }

  //remove task
  void removeTask(int index) {
    tasks.removeAt(index);
    isTaskCompleted.removeAt(index);
    completionTime.removeAt(index);
  }

  //task completion status
  void setTaskCompletion(int index) {
    isTaskCompleted[index] = !isTaskCompleted[index];
  }