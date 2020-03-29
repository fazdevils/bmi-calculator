import 'package:bmi_calculator/card/bmi_card.dart';
import 'package:bmi_calculator/card/gender_card.dart';
import 'package:bmi_calculator/card/height_card.dart';
import 'package:bmi_calculator/card/measurement_card.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/helper/bmi_value.dart';
import 'package:bmi_calculator/widget/bottom_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender _selectedGender;

  bool _heightSelected = false;
  int _height = kMinHeight;

  bool _weightSelected = false;
  int _weight = 60;

  bool _ageSelected = false;
  int _age = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: <Widget>[
                BmiCard(
                  color: Gender.MALE == _selectedGender
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  child: GenderCard(
                    icon: FontAwesomeIcons.mars,
                    label: describeEnum(Gender.MALE),
                    // color: Gender.MALE == _selectedGender ? kAccentColor : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedGender = Gender.MALE;
                    });
                  },
                ),
                BmiCard(
                  color: Gender.FEMALE == _selectedGender
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  child: GenderCard(
                    icon: FontAwesomeIcons.venus,
                    label: describeEnum(Gender.FEMALE),
                    // color: Gender.FEMALE == _selectedGender ? kAccentColor : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedGender = Gender.FEMALE;
                    });
                  },
                ),
              ],
            ),
          ),
          BmiCard(
            color: _heightSelected ? kActiveCardColor : kInactiveCardColor,
            child: HeightCard(
              height: _height,
              onChanged: (double newHeight) {
                setState(() {
                  _heightSelected = true;
                  _height = newHeight.toInt();
                });
              },
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                BmiCard(
                  color:
                      _weightSelected ? kActiveCardColor : kInactiveCardColor,
                  child: MeasurementCard(
                    label: 'WEIGHT',
                    unit: 'kg',
                    measurement: _weight,
                    plusIcon: FontAwesomeIcons.plus,
                    onPlusPressed: () {
                      setState(() {
                        _weightSelected = true;
                        _weight++;
                      });
                    },
                    minusIcon: FontAwesomeIcons.minus,
                    onMinusPressed: () {
                      setState(() {
                        _weightSelected = true;
                        _weight--;
                      });
                    },
                  ),
                ),
                BmiCard(
                  color: _ageSelected ? kActiveCardColor : kInactiveCardColor,
                  child: MeasurementCard(
                    label: 'AGE',
                    measurement: _age,
                    plusIcon: FontAwesomeIcons.plus,
                    onPlusPressed: () {
                      setState(() {
                        _ageSelected = true;
                        _age++;
                      });
                    },
                    minusIcon: FontAwesomeIcons.minus,
                    onMinusPressed: () {
                      setState(() {
                        _ageSelected = true;
                        _age--;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            label: "CALCULATE",
            onPressed: () {
              Navigator.pushNamed(context, '/results',
                  arguments: BmiValue(height: _height, weight: _weight));
            },
          ),
        ],
      ),
    );
  }
}
