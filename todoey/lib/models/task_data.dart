import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  int get taskCount {
    return _tasks.length;
  }

  operator [](i) => _tasks[i];

  void addTask(String taskText) {
    _tasks.add(Task(taskText));
    notifyListeners();
  }

  void toggleTask(int i) {
    _tasks[i].toggleDone();
    notifyListeners();
  }

  void deleteTask(int i) {
    _tasks.removeAt(i);
    notifyListeners();
  }
}
