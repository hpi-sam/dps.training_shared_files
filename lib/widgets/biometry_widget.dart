// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:intl/intl.dart';

// Project imports:
import 'package:dps.training_shared_files/l10n/localized_strings.dart';
import 'package:dps.training_shared_files/models/patient/patient.dart';

/// Builds a description of the biometry data of a patient.
class Biometry extends StatelessWidget {
  final Patient patient;

  const Biometry({Key? key, required this.patient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, String> biometryData;
    biometryData = _getPatientBiometry();

    return Card(
      child: Column(
        children: [
          Text(
            LocalizedStrings.biometryWidget_title,
            style: Theme.of(context).textTheme.headline5,
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
    List<Widget> _fieldWidgets = [];
    biometryData.forEach((key, value) {
      _fieldWidgets
          .add(Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          child: Text(key, style: TextStyle(fontWeight: FontWeight.bold)),
          flex: 1,
        ),
        Expanded(
          child: Text(value),
          flex: 2,
        ),
      ]));
      _fieldWidgets.add(Padding(
        padding: EdgeInsets.only(top: 8),
      ));
    });
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        color: Colors.white,
        child: Column(
          children: _fieldWidgets,
        ));
  }

  /// Parses the raw biometry data of the patient to a different structure for
  /// better displaying purposes.
  Map<String, String> _getPatientBiometry() {
    return {
      LocalizedStrings.biometryWidget_name: patient.name,
      LocalizedStrings.biometryWidget_address: patient.address,
      LocalizedStrings.biometryWidget_birthDate:
          _formatBirthDate(patient.birth_date, patient.age),
      LocalizedStrings.biometryWidget_gender: _formatGender(patient.gender),
      LocalizedStrings.biometryWidget_biometrics: patient.biometrics,
    };
  }

  String _formatGender(String unformattedGender) {
    if (unformattedGender == 'W') return LocalizedStrings.female;
    if (unformattedGender == 'M') return LocalizedStrings.male;
    return LocalizedStrings.diverse;
  }

  /// Returns the [unformattedBirthDate] and [age] in the format dd.mm.yyyy (age)
  String _formatBirthDate(String unformattedBirthDate, int age) {
    final DateFormat formatter = DateFormat('dd.MM.yyyy');
    int day = int.parse(unformattedBirthDate.split('.')[0]);
    int month = int.parse(unformattedBirthDate.split('.')[1]);

    final now = DateTime.now();
    int year = now.year - age;

    // if the patient has not had its birthday yet this year, then subtract one from the birth year
    if (now.month < month)
      year--;
    else if (now.month == month) {
      if (now.day < day) year--;
    }

    return formatter.format(new DateTime(year, month, day)) +
        ' (' +
        age.toString() +
        ' ' +
        LocalizedStrings.years +
        ')';
  }
}
