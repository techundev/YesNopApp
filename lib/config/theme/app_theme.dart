import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5B0FD4);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.green,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  new({required this.selectedColor})
    : assert(
        selectedColor >= 0 && selectedColor < _colorThemes.length,
        'Colors must be between 0 and ${_colorThemes.length}',
      );

  ThemeData theme() {
    return ThemeData(colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
