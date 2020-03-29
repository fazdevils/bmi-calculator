import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class HeightCard extends StatelessWidget {
  final int _height;
  final ValueChanged<double> _onChangeCallback;
  final int _minHeight;
  final int _maxHeight;

  HeightCard(
      {int minHeight = kMinHeight,
      int maxHeight = kMaxHeight,
      int height,
      ValueChanged<double> onChanged})
      : this._minHeight = minHeight,
        this._maxHeight = maxHeight,
        this._height = height,
        this._onChangeCallback = onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'HEIGHT',
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              _height.toString(),
              style: kValueTextStyle,
            ),
            Text(
              'cm',
              style: kLabelTextStyle,
            ),
          ],
        ),
//        Text(
//          ((_height / 2.54) ~/ 12).toString() +
//              '\'' +
//              ((_height ~/ 2.54) % 12).toString() +
//              '"',
//          style: kLabelTextStyle,
//        ),
        Slider(
          activeColor: kAccentColor,
          inactiveColor: kLabelTextColor,
          value: _height.toDouble(),
          min: _minHeight.toDouble(),
          max: _maxHeight.toDouble(),
          onChanged: _onChangeCallback,
        )
      ],
    );
  }
}
