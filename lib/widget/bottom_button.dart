import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String _label;
  final VoidCallback _onPress;

  BottomButton({@required String label, VoidCallback onPressed})
      : this._label = label,
        this._onPress = onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Center(
          child: Text(
            _label,
            style: kButtonTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
        color: kAccentColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.symmetric(vertical: 10.0),
        width: double.infinity,
        height: kBottomButtonHeight,
      ),
      onTap: _onPress,
    );
  }
}
