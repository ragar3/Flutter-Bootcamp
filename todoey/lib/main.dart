import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/screens/tasks_screen.dart';

import 'models/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
        theme: ThemeData(
          useMaterial3: true,
        ),
      ),
    );
  }
}
