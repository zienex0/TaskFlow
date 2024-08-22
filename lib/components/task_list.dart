import 'package:flutter/material.dart';
import 'package:task_flow/components/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TaskTile(taskText: 'Do the task1'),
        TaskTile(taskText: 'Do the task2'),
        TaskTile(taskText: 'Do the task3')
      ],
    );
  }
}
