import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/task_tile.dart';

import '../models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, i) {
            return TaskTile(
              text: taskData[i].text,
              isChecked: taskData[i].isDone,
              onChanged: (value) {
                taskData.toggleTask(i);
              },
              onLongPress: () {
                taskData.deleteTask(i);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
