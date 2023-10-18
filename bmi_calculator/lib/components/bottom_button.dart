import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.label, required this.onTap});

  final String label;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        child: Text(
          label,
          style: kButtonTextStyle,
        ),
        alignment: Alignment.center,
        color: kButtonColor,
        width: double.infinity,
        height: kButtonHeight,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
