import 'package:flutter/material.dart';

class Task with ChangeNotifier {
  final List _tasks = [
    ["Belajar Quiz Algorithm and Programming", false],
    ["Kerja Tugas Bahasa Indonesia", false],
    ["Selesain Poster Character Building", false]
  ];

  List get tasks => _tasks;

  void changeStatus(int index) {
    _tasks[index][1] = !_tasks[index][1];
    notifyListeners();
  }

  void addTask(String name) {
    _tasks.add([name, false]);
    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}