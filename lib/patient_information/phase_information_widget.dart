// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:bpmanv_app_sharedFiles/model/patient.dart';
import '../l10n/localizedstrings.dart';

/// Displays the information of the current phase of a patient.
class PhaseInformation extends StatelessWidget {
  final PatientCurrentPhase patientPhase;
  PhaseInformation({required this.patientPhase});

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: _screenWidth / 2,
              padding: EdgeInsets.symmetric(horizontal: _screenWidth / 40),
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
              width: _screenWidth / 2,
              padding: EdgeInsets.symmetric(horizontal: _screenWidth / 40),
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
          padding: EdgeInsets.symmetric(horizontal: _screenWidth / 40),
          child: Divider(color: Colors.black),
        ),
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: _screenWidth / 2,
            padding: EdgeInsets.symmetric(horizontal: _screenWidth / 40),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              _buildEKGInformation(context),
              Padding(padding: EdgeInsets.only(top: 5)),
              _buildBloodPressureInformation(context),
              Padding(padding: EdgeInsets.only(top: 5)),
              _buildSPO2Information(context),
            ]),
          ),
          Container(
              width: _screenWidth / 2,
              padding: EdgeInsets.symmetric(horizontal: _screenWidth / 40),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLungsInformation(context),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    _buildSPCOInformation(context),
                  ])),
        ])
      ],
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
    var exsang = patientPhase.standardDiagnosticData.exsang_hemorrhage;
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
    var airway = patientPhase.standardDiagnosticData.airway;
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
    var breathing = patientPhase.standardDiagnosticData.breathing;
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
    var circulation = patientPhase.standardDiagnosticData.circulation;
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
    var disability = patientPhase.standardDiagnosticData.disability;
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
          //todo: fix alignment of children to spread out according to the available size
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
    var exposure = patientPhase.standardDiagnosticData.exposure;
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
    var psyche = patientPhase.standardDiagnosticData.psyche;
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
    var ekg = patientPhase.ekg;
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
    var bloodPressure = patientPhase.blood_pressure;
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
    var pulmonaryAuscultation = patientPhase.pulmonary_auscultation;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInformationTitle(
            LocalizedStrings.phaseInformationWidget_lungsInformation_title),
        _buildFormattedRaisedInformation(context: context, value: pulmonaryAuscultation)
      ],
    );
  }

  Widget _buildSPO2Information(BuildContext context) {
    var spo2 = patientPhase.spo2;
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
    var spco = patientPhase.spco;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInformationTitle(
            LocalizedStrings.phaseInformationWidget_spcoInformation_title),
        _buildFormattedRaisedInformation(context: context, value: spco)
      ],
    );
  }

  /// Build a Text Widget containing [value] if it is not "hidden", "not measurable" or
  /// "no value". Otherwise build according other Widgets.
  Widget _buildFormattedRaisedInformation({required BuildContext context, required String value}) {
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
