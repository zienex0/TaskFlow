import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_flow/constants.dart';
import 'package:task_flow/models/task_data.dart';
import 'package:task_flow/screens/add_task_screen.dart';
import 'package:task_flow/widgets/task_list.dart';

class TaskScreen extends StatefulWidget {
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddTaskScreen();
              });
        },
        backgroundColor: kMutedPinkColor,
        splashColor: kBrightOrangeColor,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      backgroundColor: kMutedPinkColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 40, right: 30, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Icon(
                      Icons.task_alt_rounded,
                      size: 60,
                    ),
                  ),
                  const Text(
                    'TaskFlow',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '${Provider.of<TaskData>(context).taskCount} Tasks',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: kPalePeachColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: TaskList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
