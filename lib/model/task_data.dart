import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:todayflutter/model/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: '우유사기'),
    Task(name: '계란사기'),
    Task(name: '바나나사기'),
  ];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }
  void addNewTask (String newTaskTitle){
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
}