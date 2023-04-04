// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:dps.training_shared_files/l10n/shared_files_localizations.dart';
import 'package:dps.training_shared_files/models/patient/patient.dart';

/// Builds a description of the biometry data of a patient.
class Biometry extends StatelessWidget {
  final Patient patient;

  const Biometry({Key? key, required this.patient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SharedFilesLocalizations localization = SharedFilesLocalizations.of(context)!;
    Map<String, String> biometryData = _getPatientBiometry(localization);

    return Card(
      child: Column(
        children: [
          Text(
            localization.biometryWidget_title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: _buildBiometryFields(biometryData),
          ),
        ],
      ),
    );
  }

  /// Builds a row with a label-Text and a value-Text for each [biometryData] entry
  Container _buildBiometryFields(Map<String, String> biometryData) {
    List<Widget> fieldWidgets = [];
    biometryData.forEach((key, value) {
      fieldWidgets
          .add(Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          flex: 1,
          child: Text(key, style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        Expanded(
          flex: 2,
          child: Text(value),
        ),
      ]));
      fieldWidgets.add(const Padding(
        padding: EdgeInsets.only(top: 8),
      ));
    });
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: Colors.white,
        child: Column(
          children: fieldWidgets,
        ));
  }

  /// Parses the raw biometry data of the patient to a different structure for
  /// better displaying purposes.
  Map<String, String> _getPatientBiometry(
      SharedFilesLocalizations localization) {
    return {
      localization.biometryWidget_name: patient.name,
      localization.biometryWidget_address: patient.address,
      localization.biometryWidget_birthDate:
          _formatBirthDate(patient.birth_date, patient.age, localization),
      localization.biometryWidget_gender:
          _formatGender(patient.gender, localization),
      localization.biometryWidget_biometrics: patient.biometrics,
    };
  }

  String _formatGender(
      String unformattedGender, SharedFilesLocalizations localization) {
    if (unformattedGender == 'W') return localization.female;
    if (unformattedGender == 'M') return localization.male;
    return localization.diverse;
  }

  /// Returns the [unformattedBirthDate] and [age] in the localized date format
  String _formatBirthDate(String unformattedBirthDate, int age,
      SharedFilesLocalizations localization) {
    int day = int.parse(unformattedBirthDate.split('.')[0]);
    int month = int.parse(unformattedBirthDate.split('.')[1]);

    final now = DateTime.now();
    int year = now.year - age;

    // if the patient has not had its birthday yet this year, then subtract one from the birth year
    if (now.month < month) {
      year--;
    } else if (now.month == month) {
      if (now.day < day) year--;
    }

    return localization.biometryWidget_dateOfBirthAndAge(
        DateTime(year, month, day), age);
  }
}
