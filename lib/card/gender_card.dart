import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final String _label;
  final IconData _icon;
  final Color _color;

  const GenderCard({final String label, final IconData icon, final Color color})
      : this._label = label,
        this._icon = icon,
        this._color = color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          _icon,
          size: 80.0,
          color: _color,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          _label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
