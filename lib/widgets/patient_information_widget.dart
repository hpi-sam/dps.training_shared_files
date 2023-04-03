// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// Project imports:
import 'package:dps.training_shared_files/l10n/shared_files_localizations.dart';
import 'package:dps.training_shared_files/models/patient/patient.dart';
import 'package:dps.training_shared_files/widgets/biometry_widget.dart';
import 'package:dps.training_shared_files/widgets/first_impression_widget.dart';
import 'package:dps.training_shared_files/widgets/patient_visualization_legend_widget.dart';
import 'package:dps.training_shared_files/widgets/patient_visualization_widget.dart';
import 'package:dps.training_shared_files/widgets/phase_information_widget.dart';
import 'package:dps.training_shared_files/widgets/general_information_widget.dart';

/// Displays the patient information for the given [patient]. This always includes
/// visualization and static and dynamic patient data. It can also optionally include
/// interactive widgets to apply measures or triage.
class PatientInformationWidget extends StatefulWidget {
  final Patient patient;
  final Widget? triageChooserWidget;
  final Widget? appliedMeasuresWidget;
  final Widget? availableMeasuresWidget;

  const PatientInformationWidget(
      {super.key,
      required this.patient,
      this.triageChooserWidget,
      this.appliedMeasuresWidget,
      this.availableMeasuresWidget});

  @override
  State<PatientInformationWidget> createState() =>
      _PatientInformationWidgetState();
}

class _PatientInformationWidgetState extends State<PatientInformationWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoScrollbar(
          child: ListView(shrinkWrap: false, children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 10),
        ),
        LayoutBuilder(builder: (context, constraints) {
          return Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 12,
                      child: PatientVisualization(
                          patient: widget.patient,
                          width: constraints.maxWidth)),
                  Expanded(flex: 3, child: Container()),
                  Expanded(
                      flex: 5,
                      child: FirstImpressionWidget(
                        patientFirstImpression: widget.patient.firstImpression,
                        width: constraints.maxWidth,
                      )),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: constraints.maxWidth / 9 * 4,
                      ),
                      PatientVisualizationLegend(
                        patient: widget.patient,
                        width: constraints.maxWidth / 4,
                      ),
                    ],
                  ),
                  SizedBox(height: constraints.maxWidth / 6),
                ],
              ),
            ],
          );
        }),
        const Padding(
          padding: EdgeInsets.only(top: 10),
        ),
        (widget.appliedMeasuresWidget != null)
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: widget.appliedMeasuresWidget,
              )
            : Container(),
        (widget.triageChooserWidget != null)
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: widget.triageChooserWidget,
              )
            : Container(),
        if (widget.patient.isAlive)
          (widget.availableMeasuresWidget != null)
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: widget.availableMeasuresWidget)
              : Container(),
        if (widget.patient.isAlive)
          PhaseInformation(
            patient: widget.patient,
          ),
        if (widget.patient.isAlive)
          GeneralInformationWidget(
            patient: widget.patient,
          )
        else
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    SharedFilesLocalizations.of(context)!
                        .phaseInformationWidget_dead_patient,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                const Divider()
              ],
            ),
          ),
        Biometry(patient: widget.patient),
      ])),
    );
  }
}
