import 'package:flutter/material.dart';
import 'package:todayflutter/model/task.dart';


class AddTaskScreen extends StatelessWidget {
  String addTaskText;
  Function changeText;
  List<Task> tasks;
  Function addFunction;

  AddTaskScreen({this.changeText,this.tasks,this.addFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: changeText,
          ),
          FlatButton(
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: Colors.lightBlueAccent,
            onPressed: addFunction,
          ),
        ],
      ),
    );
  }
}
