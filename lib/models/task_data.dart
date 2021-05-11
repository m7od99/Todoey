import 'package:flutter/material.dart';
import 'Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  int get taskCount {
    return _tasks.length;
  }

  List<Task> get tasks {
    return _tasks;
  }

  void addTask(String task) {
    _tasks.add(Task(name: task));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
