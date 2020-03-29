import 'dart:math';

import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class BmiValue {
  BMI _bmi;
  double _value;

  BmiValue({@required int height, @required int weight}) {
    _value = weight / pow(height / 100, 2);
    _bmi = _value >= 25 ? BMI.HIGH : _value > 18 ? BMI.NORMAL : BMI.LOW;
  }

  double get value => _value;

  BMI get bmi => _bmi;

  String get message {
    switch (_bmi) {
      case BMI.HIGH:
        return 'WIDE LOAD! Mix in a salad or go for a walk!';
      case BMI.NORMAL:
        return 'WOOT! Looking good.... shake that thing!';
      default:
        return 'You look like a lollypop... get a shake there string bean!';
    }
  }
}
