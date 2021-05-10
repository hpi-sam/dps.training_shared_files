// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import 'package:bpmanv_app_sharedFiles/l10n/localizedstrings.dart';
import 'package:bpmanv_app_sharedFiles/model/patient/patient.dart';
import 'package:bpmanv_app_sharedFiles/patient_information/biometry_widget.dart';
import 'package:bpmanv_app_sharedFiles/patient_information/first_impression_row.dart';
import 'package:bpmanv_app_sharedFiles/patient_information/patient_visualization_legend_widget.dart';
import 'package:bpmanv_app_sharedFiles/patient_information/patient_visualization_widget.dart';
import 'package:bpmanv_app_sharedFiles/patient_information/phase_information_widget.dart';
import 'injury_widget.dart';

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
        child: ListView(
          shrinkWrap: false,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Container(
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 12,
                          child: PatientVisualization(
                              patientInjuries: widget.patient.injuries)),
                      Expanded(flex: 3, child: Container()),
                      Expanded(
                          flex: 5,
                          child: FirstImpressionRow(
                            patientFirstImpression:
                                widget.patient.firstImpression,
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 9 * 4,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width / 4,
                              child: PatientVisualizationLegend()),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width / 6),
                    ],
                  ),
                ],
              ),
            ),
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
            (widget.availableMeasuresWidget != null)
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: widget.availableMeasuresWidget)
                : Container(),
            PhaseInformation(
              patientPhase: widget.patient.currentPhase,
            ),
            Biometry(patient: widget.patient),
            Injury(
              patient: widget.patient,
            ),
          ],
        ),
      ),
    );
  }
}
