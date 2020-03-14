import 'package:flutter/material.dart';
import 'package:todayflutter/widgets/task_tile.dart';
import 'package:todayflutter/model/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: '우유사기'),
    Task(name: '계란사기'),
    Task(name: '바나나사기'),
  ];



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkBaxCallback: (checkBoxState) {
              setState(() {
                tasks[index].toggleDone();
              });
            });
      },
    );
  }
}
