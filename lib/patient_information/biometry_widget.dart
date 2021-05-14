// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:intl/intl.dart';

// Project imports:
import 'package:bpmanv_app_sharedFiles/model/patient.dart';
import 'package:bpmanv_app_sharedFiles/patient_information/util.dart';
import '../l10n/localizedstrings.dart';

/// Builds a description of the biometry data of a patient.
///
/// Builds an [ExpansionPanel] with the patient name as its title. When tapped,
/// all of the biometry data is listed below.
class Biometry extends StatefulWidget {
  final Patient patient;

  Biometry({required this.patient});
  @override
  BiometryState createState() => new BiometryState();
}

class BiometryState extends State<Biometry> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    Map<String, String> biometryData;
    biometryData = _getPatientBiometry();

    final Color triageColor = triageColorMap[widget.patient.triageCategory]!;

    return Container(
      child: ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            this.isExpanded = !isExpanded;
          });
        },
        children: [
          ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return Container(
                decoration: BoxDecoration(
                  color: triageColor,
                ),
                child: ListTile(
                  title: Text(widget.patient.name,
                      style: TextStyle(color: highContrastColor(triageColor))),
                ),
              );
            },
            body: _buildBiometryFields(biometryData),
            isExpanded: this.isExpanded,
            canTapOnHeader: true,
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
      LocalizedStrings.biometryWidget_address: widget.patient.address,
      LocalizedStrings.biometryWidget_birthDate:
          _formatBirthDate(widget.patient.birth_date, widget.patient.age),
      LocalizedStrings.biometryWidget_gender:
          _formatGender(widget.patient.gender),
      LocalizedStrings.biometryWidget_biometrics: widget.patient.biometrics,
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

    // if the patient has not had its birthday yet this year, then add one to the birth year
    if (now.month < month)
      year++;
    else if (now.month == month) {
      if (now.day < day) year++;
    }

    return formatter.format(new DateTime(year, month, day)) +
        ' (' +
        age.toString() +
        ' ' +
        LocalizedStrings.years +
        ')';
  }
}
