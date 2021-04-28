import 'package:flutter/material.dart';

/// Maps triage categories to a [Color] representing that category.
Map<String, Color> triageColorMap = {
  "Grün": Colors.green,
  "Gelb": Colors.amberAccent,
  "Rot": Colors.redAccent,
  "Blau": Colors.blueAccent,
  "Schwarz": Colors.black,
  "Nicht gesichtet": Colors.grey[400]!,
};

/// Maps pretriage categories to a [Color] representing that category.
Map<String, Color> pretriageColorMap = {
  "Grün": Colors.green[100]!,
  "Gelb": Colors.amberAccent[100]!,
  "Rot": Colors.redAccent[100]!,
  "Blau": Colors.blueAccent[100]!,
  "Schwarz": Colors.grey[600]!,
  "Nicht gesichtet": Colors.grey[200]!,
};

/// returns either black or white based on [_color]
/// for better readability / high contrast.
Color highContrastColor(Color _color) {
  return _color.computeLuminance() > 0.5 ? Colors.black : Colors.white;
}
