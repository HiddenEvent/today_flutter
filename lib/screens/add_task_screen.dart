import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todayflutter/model/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String addTaskText;

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
            onChanged: (changeText){
              addTaskText = changeText;
            },
          ),
          Consumer<TaskData>(
            builder: (context, taskList, child ){
              return FlatButton(
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.lightBlueAccent,
                onPressed: (){
                  taskList.addNewTask(addTaskText);
                  Navigator.pop(context);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
