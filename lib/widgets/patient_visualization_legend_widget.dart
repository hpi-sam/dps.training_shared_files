// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:dps.training_shared_files/l10n/shared_files_localizations.dart';
import 'package:dps.training_shared_files/models/patient/patient.dart';

/// Displays a legend of the icons used for injuries in the patient visualization
class PatientVisualizationLegend extends StatelessWidget {
  final double width;
  final Patient patient;

  const PatientVisualizationLegend(
      {Key? key, required this.width, required this.patient})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconSize = Theme.of(context).textTheme.bodySmall!.fontSize! * 1.5;
    const spaceBetweenIconAndLabel = 8.0;
    final labelWidth = width - iconSize - spaceBetweenIconAndLabel;
    return SizedBox(
      width: width,
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
                    padding:
                        const EdgeInsets.only(left: spaceBetweenIconAndLabel),
                    width: labelWidth,
                    child: Text(
                      SharedFilesLocalizations.of(context)!
                          .patientVisualizationLegendWidget_bleeding,
                      style: Theme.of(context).textTheme.bodySmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ])
              : Container(),
          const SizedBox(height: 3.0),
          patient.injuries.injuries.any(
                  (element) => element["injury_type"] == "critical bleeding")
              ? Row(children: [
                  Image.asset('assets/icons/critical_bleeding_icon.png',
                      package: 'dps.training_shared_files',
                      height: iconSize,
                      width: iconSize),
                  Container(
                    padding:
                        const EdgeInsets.only(left: spaceBetweenIconAndLabel),
                    width: labelWidth,
                    child: Text(
                      SharedFilesLocalizations.of(context)!
                          .patientVisualizationLegendWidget_bleedingSplattering,
                      style: Theme.of(context).textTheme.bodySmall,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  )
                ])
              : Container(),
          const SizedBox(height: 3.0),
          patient.injuries.injuries
                  .any((element) => element["injury_type"] == "fracture")
              ? Row(children: [
                  Image.asset('assets/icons/fracture_icon.png',
                      package: 'dps.training_shared_files',
                      height: iconSize,
                      width: iconSize),
                  Container(
                    padding:
                        const EdgeInsets.only(left: spaceBetweenIconAndLabel),
                    width: labelWidth,
                    child: Text(
                      SharedFilesLocalizations.of(context)!
                          .patientVisualizationLegendWidget_fracture,
                      style: Theme.of(context).textTheme.bodySmall,
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
