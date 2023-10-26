import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  RoundedTextField(
      {required this.onChanged,
      required this.hintText,
      this.keyboardType,
      this.obscureText = false,});

  final void Function(String) onChanged;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: this.keyboardType,
      obscureText: this.obscureText,
      textAlign: TextAlign.center,
      onChanged: this.onChanged,
      decoration: InputDecoration(
        hintText: this.hintText,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
    );
  }
}
