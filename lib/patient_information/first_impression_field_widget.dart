// Flutter imports:
import 'package:flutter/material.dart';

/// Builds a labeled Container to display a single first impression field for
/// a patient.
///
/// Used in the [FirstImpressionRow].
class FirstImpressionField extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String description;
  final bool isActive;
  final double width;
  late final String? character;
  late final Image? icon;
  late final Image? alternateIcon;
  late final bool useAlternateIcon;
  late final bool _isIcon;

  final double textSize = 50;

  /// Creates a FirstImpressionField which displays a Character (e.g. R).
  FirstImpressionField.character({
    required this.character,
    required this.description,
    required this.isActive,
    required this.textColor,
    required this.backgroundColor,
    required this.width,
  }) {
    this._isIcon = false;
    this.icon = null;
    this.useAlternateIcon = false;
    this.alternateIcon = null;
  }

  /// Creates a FirstImpressionField which displays an Icon.
  FirstImpressionField.icon({
    required this.icon,
    required this.description,
    required this.isActive,
    required this.textColor,
    required this.backgroundColor,
    required this.width,
    this.useAlternateIcon = false,
    this.alternateIcon,
  }) {
    this._isIcon = true;
    this.character = null;
  }

  @override
  Widget build(BuildContext context) {
    var activeDecoration = BoxDecoration(
        border: Border.all(width: 3),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: backgroundColor);

    return isActive
        ? Column(
            children: [
              Container(
                child:
                    FittedBox(fit: BoxFit.fitWidth, child: Text(description)),
              ),
              Container(
                  width: width * 0.2,
                  height: width * 0.2,
                  decoration: activeDecoration,
                  child: Center(child: _isIcon ? _buildIcon() : _buildText())),
            ],
          )
        : Container();
  }

  Image? _buildIcon() {
    return useAlternateIcon
        ? alternateIcon
        : icon;
  }

  Text _buildText() {
    return Text(
      character!,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: textSize, color: textColor, fontWeight: FontWeight.bold),
    );
  }
}
