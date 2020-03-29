import 'package:bmi_calculator/card/bmi_card.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/helper/bmi_value.dart';
import 'package:bmi_calculator/widget/bottom_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BmiResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BmiValue bmiValue = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kValueTextStyle,
              ),
            ),
          ),
          BmiCard(
            flex: 5,
            color: kActiveCardColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  describeEnum(bmiValue.bmi),
                  style: kResultTextStyle,
                ),
                Text(
                  bmiValue.value.toStringAsFixed(1),
                  style: kBmiTextStyle,
                ),
                Text(
                  bmiValue.message,
                  style: kButtonTextStyle,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          BottomButton(
            label: "RE-CALCULATE",
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
