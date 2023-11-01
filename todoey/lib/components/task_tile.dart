import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String text;
  final bool isChecked;
  final void Function(bool?)? onChanged;
  final void Function() onLongPress;

  TaskTile({
    required this.text,
    required this.isChecked,
    required this.onChanged,
    required this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongPress,
      child: CheckboxListTile(
        title: Text(
          text,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: onChanged,
      ),
    );
  }
}
