// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:dps.training_shared_files/models/patient/patient.dart';
import '../l10n/localized_strings.dart';
import 'first_impression_field_widget.dart';

/// Draws the four first impression fields of a patient.
///
/// Each [FirstImpressionField] displays a character (as in the analog DPS simulation) and is
/// colored when applicable to the patient.
class FirstImpressionWidget extends StatelessWidget {
  final PatientFirstImpression patientFirstImpression;
  final double width;
  FirstImpressionWidget(
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
          icon: Image.asset('assets/icons/bleeding_icon.png',
              package: 'dps.training_shared_files', height: 50, width: 50),
          alternateIcon: Image.asset('assets/icons/critical_bleeding_icon.png',
              package: 'dps.training_shared_files', height: 50, width: 50),
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
