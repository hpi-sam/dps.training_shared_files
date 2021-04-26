import 'package:api_service/model/patient.dart';
import 'package:bpmanv_app_widgets/biometry_widget.dart';
import 'package:bpmanv_app_widgets/first_impression_row.dart';
import 'package:bpmanv_app_widgets/injury_widget.dart';
import 'package:bpmanv_app_widgets/patient_visualization_legend_widget.dart';
import 'package:bpmanv_app_widgets/patient_visualization_widget.dart';
import 'package:bpmanv_app_widgets/phase_information_widget.dart';
import 'package:flutter/cupertino.dart';

import 'l10n/localizedstrings.dart';

class PV extends StatefulWidget {
  final Patient patient;
  final Widget? triageChooser;
  final Widget? appliedMeasures;
  final Widget? availableMeasures;

  PV(
      {required this.patient,
      this.triageChooser,
      this.appliedMeasures,
      this.availableMeasures});

  @override
  _PVState createState() => _PVState();
}

class _PVState extends State<PV> {
  @override
  initState() {
    super.initState();
    _initializeLocalization();
  }

  /// this is an simplified version of the implementation used in : https:github.com/jhomlala/catcher/blob/master/lib/core/catcher.dart
  Future<void> _initializeLocalization() async {
    LocalizedStrings.buildDefaultGermanOptions();
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
            (widget.appliedMeasures != null)
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: widget.appliedMeasures,
                  )
                : Container(),
            (widget.triageChooser != null)
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: widget.triageChooser,
                  )
                : Container(),
            (widget.availableMeasures != null)
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: widget.availableMeasures)
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
