import 'package:flutter/material.dart';
import 'package:todayflutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todayflutter/model/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            return TaskTile(
                taskTitle: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkBaxCallback: (checkBoxState) {
//              setState(() {
//                Provider.of<TaskData>(context).tasks[index].toggleDone();
//              });
                });
          },
        );
      },
    );
  }
}
