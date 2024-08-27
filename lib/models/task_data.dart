import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:task_flow/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(taskText: 'Buy milk'),
    Task(taskText: 'Code in Flutter'),
  ];

  int get taskCount => _tasks.length;

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  void addTask(String taskTitle) {
    final task = Task(taskText: taskTitle);
    _tasks.add(task);
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
