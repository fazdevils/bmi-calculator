import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class MeasurementCard extends StatelessWidget {
  final String _label;
  final String _unit;
  final int _measurement;
  final IconData _plusIcon;
  final VoidCallback _onPressPlusCallback;
  final IconData _minusIcon;
  final VoidCallback _onPressMinusCallback;

  MeasurementCard(
      {String label,
      String unit = '',
      int measurement,
      IconData plusIcon,
      VoidCallback onPlusPressed,
      IconData minusIcon,
      VoidCallback onMinusPressed})
      : this._label = label,
        this._unit = unit,
        this._measurement = measurement,
        this._plusIcon = plusIcon,
        this._onPressPlusCallback = onPlusPressed,
        this._minusIcon = minusIcon,
        this._onPressMinusCallback = onMinusPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(_label, style: kLabelTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(_measurement.toString(), style: kValueTextStyle),
            Text(_unit, style: kLabelTextStyle),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              icon: _minusIcon,
              onPressed: _onPressMinusCallback,
            ),
            SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              icon: _plusIcon,
              onPressed: _onPressPlusCallback,
            ),
          ],
        ),
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData _icon;
  final VoidCallback _onPressCallback;

  RoundIconButton({IconData icon, VoidCallback onPressed})
      : this._icon = icon,
        this._onPressCallback = onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: kLabelTextColor,
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      child: Icon(_icon),
      onPressed: _onPressCallback,
    );
  }
}
