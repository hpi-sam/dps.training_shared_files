// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Project imports:
import 'package:bpmanv_app_sharedFiles/l10n/localizedstrings.dart';

/// Displays a legend of the icons used for injuries in the patient visualization
class PatientVisualizationLegend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final iconSize = Theme.of(context).textTheme.caption!.fontSize!;
    final spaceBetweenIconAndLabel = 8.0;
    final labelWidth = MediaQuery.of(context).size.width / 4 -
        iconSize -
        spaceBetweenIconAndLabel;
    return Column(
      children: [
        Row(children: [
          Icon(
            FontAwesomeIcons.tint,
            color: Colors.red,
            size: iconSize,
          ),
          Container(
            padding: EdgeInsets.only(left: spaceBetweenIconAndLabel),
            width: labelWidth,
            child: Text(
              LocalizedStrings.patientVisualizationLegendWidget_bleeding,
              style: Theme.of(context).textTheme.caption,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ]),
        SizedBox(height: 3.0),
        Row(children: [
          Icon(
            FontAwesomeIcons.wind,
            color: Colors.red,
            size: iconSize,
          ),
          Container(
            padding: EdgeInsets.only(left: spaceBetweenIconAndLabel),
            width: labelWidth,
            child: Text(
              LocalizedStrings
                  .patientVisualizationLegendWidget_bleedingSplattering,
              style: Theme.of(context).textTheme.caption,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          )
        ]),
        SizedBox(height: 3.0),
        Row(children: [
          Icon(
            FontAwesomeIcons.bone,
            color: Colors.black,
            size: iconSize,
          ),
          Container(
            padding: EdgeInsets.only(left: spaceBetweenIconAndLabel),
            width: labelWidth,
            child: Text(
              LocalizedStrings.patientVisualizationLegendWidget_fracture,
              style: Theme.of(context).textTheme.caption,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ]),
      ],
    );
  }
}
