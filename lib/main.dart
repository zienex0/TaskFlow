import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_flow/models/task_data.dart';
import 'package:task_flow/screens/task_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskScreen(),
    );
  }
}
