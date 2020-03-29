import 'package:flutter/material.dart';

class BmiCard extends StatelessWidget {
  static const Color _defaultColor = Color(0xFF111328);
  final Color _color;
  final Widget _child;
  final VoidCallback _onPressCallback;
  final int _flex;

  const BmiCard(
      {final Color color = _defaultColor,
      final Widget child,
      final VoidCallback onPressed,
      final int flex = 1})
      : this._color = color,
        this._child = child,
        this._onPressCallback = onPressed,
        this._flex = flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: _flex,
      child: GestureDetector(
        child: Container(
          // color: Color(0xFF1D1E33), // can't set color here when using BoxDecoration
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: _child,
        ),
        onTap: _onPressCallback,
      ),
    );
  }
}
