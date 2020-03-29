import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/page/bmi_result_page.dart';
import 'package:bmi_calculator/page/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      theme: ThemeData.dark().copyWith(
//        primaryColor: Color(0xFF0A0E21),
//        scaffoldBackgroundColor: Color(0xFF0A0E21),
//      ),
      theme: ThemeData(
        primaryColor: kMainAppColor,
        scaffoldBackgroundColor: kMainAppColor,
        accentColor: kAccentColor,
        iconTheme: IconThemeData(
          color: kValueTextColor,
        ),
        textTheme: TextTheme(
          body1: TextStyle(color: kValueTextColor),
          body2: TextStyle(color: kLabelTextColor),
        ),
        dividerColor: Color(0xFFBDBDBD),
      ),
      initialRoute: '/input',
      routes: {
        '/input': (context) => InputPage(),
        '/results': (context) => BmiResultPage(),
      },
    );
  }
}
