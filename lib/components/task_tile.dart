import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({required this.taskText, super.key});
  final String taskText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskText),
      trailing: IconButton(
        icon: const Icon(
          Icons.check_box_outline_blank,
          size: 32,
        ),
        onPressed: () {},
      ),
    );
  }
}
