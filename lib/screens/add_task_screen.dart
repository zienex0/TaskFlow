import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_flow/constants.dart';
import 'package:task_flow/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String taskTitle = '';
    return Container(
      decoration: const BoxDecoration(
        color: kPalePeachColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Column(
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 32),
            child: TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                taskTitle = value;
              },
              decoration: kAddTaskInputDecoration,
            ),
          ),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false).addTask(taskTitle);
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
              backgroundColor: kMutedPinkColor,
              foregroundColor: kPalePeachColor,
              minimumSize: const Size(80, 50),
            ),
            child: const Text(
              'Add',
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
