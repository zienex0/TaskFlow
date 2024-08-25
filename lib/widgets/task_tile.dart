import 'package:flutter/material.dart';
import 'package:task_flow/constants.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {required this.taskText,
      required this.isChecked,
      required this.checkboxCallback,
      super.key});

  final String taskText;
  final bool isChecked;
  final Function(bool) checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskText,
        style: TextStyle(
            fontSize: 16,
            fontWeight: isChecked ? FontWeight.w200 : FontWeight.w600,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: kMutedPinkColor,
        onChanged: (bool? value) {
          checkboxCallback(value ?? false);
        },
      ),
    );
  }
}
