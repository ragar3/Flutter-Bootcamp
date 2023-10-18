import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

import 'components/bottom_button.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmi, required this.result, required this.interpretation});

  final String bmi;
  final String result;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
            padding: EdgeInsets.all(15.0),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmi,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            label: 'RE-CALCULATE YOUR BMI',
          )
        ],
      ),
    );
  }
}
