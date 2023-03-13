// Flutter imports:
// Project imports:
import 'package:dps.training_shared_files/l10n/localized_strings.dart';
import 'package:dps.training_shared_files/models/patient/patient.dart';
import 'package:flutter/material.dart';

/// Displays a legend of the icons used for injuries in the patient visualization
class PatientVisualizationLegend extends StatelessWidget {
  final double width;
  final Patient patient;

  const PatientVisualizationLegend(
      {Key? key, required this.width, required this.patient})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconSize = Theme.of(context).textTheme.caption!.fontSize! * 1.5;
    final spaceBetweenIconAndLabel = 8.0;
    final labelWidth = this.width - iconSize - spaceBetweenIconAndLabel;
    return Container(
      width: this.width,
      child: Column(
        children: [
          patient.injuries.injuries
                  .any((element) => element["injury_type"] == "bleeding")
              ? Row(children: [
                  Image.asset('assets/icons/bleeding_icon.png',
                      package: 'dps.training_shared_files',
                      height: iconSize,
                      width: iconSize),
                  Container(
                    padding: EdgeInsets.only(left: spaceBetweenIconAndLabel),
                    width: labelWidth,
                    child: Text(
                      LocalizedStrings
                          .patientVisualizationLegendWidget_bleeding,
                      style: Theme.of(context).textTheme.caption,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ])
              : Container(),
          SizedBox(height: 3.0),
          patient.injuries.injuries.any(
                  (element) => element["injury_type"] == "critical bleeding")
              ? Row(children: [
                  Image.asset('assets/icons/critical_bleeding_icon.png',
                      package: 'dps.training_shared_files',
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
                ])
              : Container(),
          SizedBox(height: 3.0),
          patient.injuries.injuries
                  .any((element) => element["injury_type"] == "fracture")
              ? Row(children: [
                  Image.asset('assets/icons/fracture_icon.png',
                      package: 'dps.training_shared_files',
                      height: iconSize,
                      width: iconSize),
                  Container(
                    padding: EdgeInsets.only(left: spaceBetweenIconAndLabel),
                    width: labelWidth,
                    child: Text(
                      LocalizedStrings
                          .patientVisualizationLegendWidget_fracture,
                      style: Theme.of(context).textTheme.caption,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ])
              : Container(),
        ],
      ),
    );
  }
}
