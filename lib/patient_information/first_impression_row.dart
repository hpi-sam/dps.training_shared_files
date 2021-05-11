// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Project imports:
import 'package:bpmanv_app_sharedFiles/model/patient.dart';
import '../l10n/localizedstrings.dart';
import 'first_impression_field_widget.dart';

/// Draws a row of the four first impression fields of a patient.
///
/// Each [FirstImpressionField] displays a character (as in the analog DPS simulation) and is
/// colored when applicable to the patient.
class FirstImpressionRow extends StatelessWidget {
  final PatientFirstImpression patientFirstImpression;
  final double width;
  FirstImpressionRow(
      {required this.patientFirstImpression, required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FirstImpressionField.character(
          character: 'G',
          description:
              LocalizedStrings.firstImpressionRow_firstImpressionfields_canWalk,
          isActive: patientFirstImpression.can_walk,
          textColor: Colors.deepPurple[700]!,
          backgroundColor: Colors.deepPurple[100]!,
          width: this.width,
        ),
        FirstImpressionField.icon(
          icon: FontAwesomeIcons.tint,
          alternateIcon: FontAwesomeIcons.wind,
          description: LocalizedStrings
              .firstImpressionRow_firstImpressionfields_bleeding,
          isActive: patientFirstImpression.is_bleeding ||
              patientFirstImpression.is_bleeding_critically,
          textColor: Colors.red[800]!,
          backgroundColor: Colors.red[100]!,
          useAlternateIcon: patientFirstImpression.is_bleeding_critically,
          width: this.width,
        ),
        FirstImpressionField.character(
          character: 'R',
          description: LocalizedStrings
              .firstImpressionRow_firstImpressionfields_motionless,
          isActive: patientFirstImpression.is_motionless,
          textColor: Colors.orange[700]!,
          backgroundColor: Colors.orange[100]!,
          width: this.width,
        ),
        FirstImpressionField.character(
          character: 'Z',
          description: LocalizedStrings
              .firstImpressionRow_firstImpressionfields_cyanosis,
          isActive: patientFirstImpression.has_cyanosis,
          textColor: Colors.blue[800]!,
          backgroundColor: Colors.blue[100]!,
          width: this.width,
        ),
      ],
    );
  }
}
