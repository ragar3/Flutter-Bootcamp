import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({
    required this.label,
    required this.color,
    required this.onPressed,
    required this.labelColor,
  });

  final String label;
  final Color color;
  final Color labelColor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: this.color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            label,
            style: TextStyle(
              color: labelColor,
            ),
          ),
        ),
      ),
    );
  }
}
