import 'package:flutter/material.dart';

const Color kActiveCardColor = Color(0x29673ab7); //Color(0xFF1D1E33);
const Color kInactiveCardColor = Color(0xFF111328);

const Color kMainAppColor = Color(0xFF0A0E21);
const Color kAccentColor = Color(0xFF673ab7);

const Color kLabelTextColor = Color(0xFF8D8E98);
const Color kValueTextColor = Color(0xFFe8eaf6);

const TextStyle kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  color: kLabelTextColor,
);
const TextStyle kButtonTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w900,
);
const TextStyle kValueTextStyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w900,
);
const TextStyle kResultTextStyle = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold,
  color: Color(0xFF24D876),
);
const TextStyle kBmiTextStyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w900,
);

const int kMinHeight = 100;
const int kMaxHeight = 220;

const double kBottomButtonHeight = 80.0;

enum Gender { MALE, FEMALE }
enum BMI { LOW, NORMAL, HIGH }
