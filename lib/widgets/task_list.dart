import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_flow/models/task_data.dart';
import 'package:task_flow/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
          itemCount: Provider.of<TaskData>(context).tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
                taskText: taskData.tasks[index].taskText,
                isChecked: taskData.tasks[index].isDone,
                checkboxCallback: (checkboxState) {
                  // setState(() {
                  //   Provider.of<TaskData>(context).tasks[index].toggleDone();
                  // });
                });
          });
    });
  }
}
