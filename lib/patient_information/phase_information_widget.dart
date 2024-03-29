// Flutter imports:
// Project imports:
import 'package:dps.training_shared_files/model/patient/patient.dart';
import 'package:flutter/material.dart';

import '../l10n/localizedstrings.dart';

/// Displays the information of the current phase of a patient.
class PhaseInformation extends StatelessWidget {
  final Patient patient;
  PhaseInformation({required this.patient});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: constraints.maxWidth / 2,
                  padding: EdgeInsets.symmetric(
                      horizontal: constraints.maxWidth / 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildExsangInformation(context),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      _buildAirwayInformation(context),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      _buildBreathingInformation(context),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      _buildCirculationInformation(context),
                    ],
                  ),
                ),
                Container(
                  width: constraints.maxWidth / 2,
                  padding: EdgeInsets.symmetric(
                      horizontal: constraints.maxWidth / 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDisabilityInformation(context),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      _buildExposureInformation(context),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      _buildPsycheInformation(context),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: constraints.maxWidth / 40),
              child: Divider(color: Colors.black),
            ),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                width: constraints.maxWidth / 2,
                padding:
                    EdgeInsets.symmetric(horizontal: constraints.maxWidth / 40),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildEKGInformation(context),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      _buildBloodPressureInformation(context),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      _buildSPO2Information(context),
                    ]),
              ),
              Container(
                  width: constraints.maxWidth / 2,
                  padding: EdgeInsets.symmetric(
                      horizontal: constraints.maxWidth / 40),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildLungsInformation(context),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        _buildSPCOInformation(context),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        _buildBodyCheckInformation(context),
                      ])),
            ])
          ],
        );
      }),
    );
  }

  Widget _buildInformationTitle(String title) {
    return Text(
      title,
      style: TextStyle(
          decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildHiddenInformation(BuildContext context) {
    return Text(
      LocalizedStrings.phaseInformationWidget_hiddenInformation_title,
      style: TextStyle(color: Colors.redAccent),
    );
  }

  Widget _buildNotMeasurableInformation(BuildContext context) {
    return Text(
      LocalizedStrings.phaseInformationWidget_notMeasurableInformation_title,
      style: TextStyle(color: Colors.redAccent),
    );
  }

  Widget _buildNoValueInformation(BuildContext context) {
    return Text(
      LocalizedStrings.phaseInformationWidget_noValueInformation_title,
      style: TextStyle(color: Colors.redAccent),
    );
  }

  Widget _buildExsangInformation(BuildContext context) {
    var exsang = patient.currentPhase.standardDiagnosticData.exsang_hemorrhage;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInformationTitle(
            LocalizedStrings.phaseInformationWidget_exsangInformation_title),
        Text(exsang),
      ],
    );
  }

  Widget _buildAirwayInformation(BuildContext context) {
    var airway = patient.currentPhase.standardDiagnosticData.airway;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInformationTitle(
            LocalizedStrings.phaseInformationWidget_airwayInformation_title),
        Text(airway),
      ],
    );
  }

  Widget _buildBreathingInformation(BuildContext context) {
    var breathing = patient.currentPhase.standardDiagnosticData.breathing;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInformationTitle(
            LocalizedStrings.phaseInformationWidget_breathingInformation_title),
        Text(breathing.pattern),
        breathing.has_cyanosis
            ? Text(breathing.frequency.toString() +
                LocalizedStrings
                    .phaseInformationWidget_breathingInformation_cyanosis)
            : Text(breathing.frequency.toString())
      ],
    );
  }

  Widget _buildCirculationInformation(BuildContext context) {
    var circulation = patient.currentPhase.standardDiagnosticData.circulation;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInformationTitle(LocalizedStrings
            .phaseInformationWidget_circulationInformation_title),
        Text(circulation.pulse.toString() + " " + circulation.rhythm),
        Text(circulation.pulse_place + "; Recap: " + circulation.recap),
      ],
    );
  }

  Widget _buildDisabilityInformation(BuildContext context) {
    var disability = patient.currentPhase.standardDiagnosticData.disability;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInformationTitle(LocalizedStrings
            .phaseInformationWidget_disabilityInformation_title),
        Text(LocalizedStrings
                .phaseInformationWidget_disabilityInformation_pupils +
            disability.pupils),
        Text(LocalizedStrings
                .phaseInformationWidget_disabilityInformation_gcs_title +
            (disability.gcs_eyes +
                    disability.gcs_language +
                    disability.gcs_motoric_behaviour)
                .toString()),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(LocalizedStrings
                    .phaseInformationWidget_disabilityInformation_gcs_eye),
                Text(disability.gcs_eyes.toString()),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(LocalizedStrings
                    .phaseInformationWidget_disabilityInformation_gcs_verbal),
                Text(disability.gcs_language.toString()),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(LocalizedStrings
                    .phaseInformationWidget_disabilityInformation_gcs_motor),
                Text(disability.gcs_motoric_behaviour.toString()),
              ],
            ),
          ],
        )
      ],
    );
  }

  Widget _buildExposureInformation(BuildContext context) {
    var exposure = patient.currentPhase.standardDiagnosticData.exposure;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInformationTitle(
            LocalizedStrings.phaseInformationWidget_exposureInformation_title),
        Text(LocalizedStrings.phaseInformationWidget_exposureInformation_pain +
            exposure.pain),
        Text(LocalizedStrings.phaseInformationWidget_exposureInformation_skin +
            exposure.skin),
      ],
    );
  }

  Widget _buildPsycheInformation(BuildContext context) {
    var psyche = patient.currentPhase.standardDiagnosticData.psyche;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInformationTitle(
            LocalizedStrings.phaseInformationWidget_psycheInformation_title),
        Text(psyche),
      ],
    );
  }

  Widget _buildEKGInformation(BuildContext context) {
    var ekg = patient.currentPhase.ekg;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInformationTitle(
            LocalizedStrings.phaseInformationWidget_ekgInformation_title),
        _buildFormattedRaisedInformation(context: context, value: ekg)
      ],
    );
  }

  Widget _buildBloodPressureInformation(BuildContext context) {
    var bloodPressure = patient.currentPhase.blood_pressure;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInformationTitle(LocalizedStrings
            .phaseInformationWidget_bloodPressureInformation_title),
        _buildFormattedRaisedInformation(context: context, value: bloodPressure)
      ],
    );
  }

  Widget _buildLungsInformation(BuildContext context) {
    var pulmonaryAuscultation = patient.currentPhase.pulmonary_auscultation;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInformationTitle(
            LocalizedStrings.phaseInformationWidget_lungsInformation_title),
        _buildFormattedRaisedInformation(
            context: context, value: pulmonaryAuscultation)
      ],
    );
  }

  Widget _buildSPO2Information(BuildContext context) {
    var spo2 = patient.currentPhase.spo2;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInformationTitle(
            LocalizedStrings.phaseInformationWidget_spo2Information_title),
        _buildFormattedRaisedInformation(context: context, value: spo2)
      ],
    );
  }

  Widget _buildSPCOInformation(BuildContext context) {
    var spco = patient.currentPhase.spco;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInformationTitle(
            LocalizedStrings.phaseInformationWidget_spcoInformation_title),
        _buildFormattedRaisedInformation(context: context, value: spco)
      ],
    );
  }

  Widget _buildBodyCheckInformation(BuildContext context) {
    var bodyCheck = patient.bodyCheckInformation;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInformationTitle(
            LocalizedStrings.phaseInformationWidget_bodyCheckInformation_title),
        _buildFormattedRaisedInformation(context: context, value: bodyCheck),
      ],
    );
  }

  /// Build a Text Widget containing [value] if it is not "hidden", "not measurable" or
  /// "no value". Otherwise build according other Widgets.
  Widget _buildFormattedRaisedInformation(
      {required BuildContext context, required String value}) {
    switch (value) {
      case "hidden":
        return _buildHiddenInformation(context);
      case "not measurable":
        return _buildNotMeasurableInformation(context);
      case "no value":
        return _buildNoValueInformation(context);
    }
    return Text(value);
  }
}
