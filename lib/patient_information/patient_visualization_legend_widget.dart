// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Project imports:
import 'package:bpmanv_app_sharedFiles/l10n/localizedstrings.dart';

/// Displays a legend of the icons used for injuries in the patient visualization
class PatientVisualizationLegend extends StatelessWidget {

  final double width;

  const PatientVisualizationLegend({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconSize = Theme.of(context).textTheme.caption!.fontSize!*1.5;
    final spaceBetweenIconAndLabel = 8.0;
    final labelWidth = this.width -
        iconSize -
        spaceBetweenIconAndLabel;
    return Container(
      width: this.width,
      child: Column(
        children: [
          Row(children: [
            Image.asset('assets/icons/bleeding_icon.png',
                package: 'bpmanv_app_sharedFiles',
                height: iconSize,
                width: iconSize),
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
            Image.asset('assets/icons/critical_bleeding_icon.png',
                package: 'bpmanv_app_sharedFiles',
                height: iconSize,
                width: iconSize),
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
            Image.asset('assets/icons/fracture_icon.png',
                package: 'bpmanv_app_sharedFiles',
                height: iconSize,
                width: iconSize),
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
      ),
    );
  }
}
