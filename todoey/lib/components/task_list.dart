import 'package:flutter/material.dart';
import 'package:todoey/components/task_tile.dart';
import 'package:todoey/models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  TaskList(this.tasks);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        return TaskTile(
          text: widget.tasks[i].text,
          isChecked: widget.tasks[i].isDone,
          onChanged: (value) {
            setState(() {
              widget.tasks[i].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
