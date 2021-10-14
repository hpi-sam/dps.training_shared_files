// Flutter imports:
// Project imports:
import 'package:bpmanv_app_sharedFiles/l10n/localizedstrings.dart';
import 'package:bpmanv_app_sharedFiles/model/patient/patient.dart';
import 'package:bpmanv_app_sharedFiles/patient_information/biometry_widget.dart';
import 'package:bpmanv_app_sharedFiles/patient_information/first_impression_widget.dart';
import 'package:bpmanv_app_sharedFiles/patient_information/patient_visualization_legend_widget.dart';
import 'package:bpmanv_app_sharedFiles/patient_information/patient_visualization_widget.dart';
import 'package:bpmanv_app_sharedFiles/patient_information/phase_information_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'general_information_widget.dart';

/// Displays the patient information for the given [patient]. This always includes
/// visualization and static and dynamic patient data. It can also optionally include
/// interactive widgets to apply measures or triage.
class PatientInformationWidget extends StatefulWidget {
  final Patient patient;
  final Widget? triageChooserWidget;
  final Widget? appliedMeasuresWidget;
  final Widget? availableMeasuresWidget;

  PatientInformationWidget(
      {required this.patient,
      this.triageChooserWidget,
      this.appliedMeasuresWidget,
      this.availableMeasuresWidget});

  @override
  _PatientInformationWidgetState createState() =>
      _PatientInformationWidgetState();
}

class _PatientInformationWidgetState extends State<PatientInformationWidget> {
  @override
  initState() {
    super.initState();
    _initializeLocalization();
  }

  /// this is an simplified version of the implementation used in : https:github.com/jhomlala/catcher/blob/master/lib/core/catcher.dart
  Future<void> _initializeLocalization() async {
    LocalizedStrings.buildDefaultGermanStrings();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoScrollbar(
          child: ListView(shrinkWrap: false, children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 10),
        ),
        LayoutBuilder(builder: (context, constraints) {
          return Container(
            child: Stack(
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
                          patientFirstImpression:
                              widget.patient.firstImpression,
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
            ),
          );
        }),
        Padding(
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
                    LocalizedStrings.phaseInformationWidget_dead_patient,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Divider()
              ],
            ),
          ),
        Biometry(patient: widget.patient),
      ])),
    );
  }
}
