import 'package:flutter/material.dart';

class NewTaskScreen extends StatelessWidget {
  final void Function(String) addTaskCallback;

  NewTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String taskText = '';
    final TextEditingController taskController = TextEditingController();

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom + 40,
            right: 40,
            left: 40,
            top: 40),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30,
              ),
            ),
            TextField(
              autofocus: true,
              cursorColor: Colors.lightBlueAccent,
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 1),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 2),
                ),
              ),
              controller: taskController,
              onChanged: (value) {
                taskText = value;
              },
            ),
            FilledButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlueAccent)),
              onPressed: () {
                addTaskCallback(taskText);
                taskController.clear();
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
