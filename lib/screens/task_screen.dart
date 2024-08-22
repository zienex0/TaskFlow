import 'package:flutter/material.dart';
import 'package:task_flow/constants.dart';
import 'package:task_flow/components/task_list.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
          const SafeArea(
            child: Padding(
              padding:
                  EdgeInsets.only(left: 40, right: 30, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Icon(
                      Icons.task_alt_rounded,
                      size: 60,
                    ),
                  ),
                  Text(
                    'TaskFlow',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '12 Tasks',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
