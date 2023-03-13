// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:dps.training_shared_files/l10n/localized_strings.dart';
import 'package:dps.training_shared_files/models/patient/patient.dart';

/// Builds a widget displaying general patient data (injury and situation of discovery)
class GeneralInformationWidget extends StatelessWidget {
  final Patient patient;

  const GeneralInformationWidget({Key? key, required this.patient})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = _getGeneralInformation();

    return Card(
      child: Column(
        children: [
          Text(
            LocalizedStrings.generalInformationWidget_title,
            style: Theme.of(context).textTheme.headline5,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: _buildInformationFields(data),
          ),
        ],
      ),
    );
  }

  Container _buildInformationFields(Map<String, String> data) {
    List<Widget> _fieldWidgets = [];
    data.forEach((key, value) {
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

  Map<String, String> _getGeneralInformation() {
    return {
      LocalizedStrings.generalInformationWidget_injuries_title:
          patient.injuryDescription,
      LocalizedStrings.generalInformationWidget_situationOfDiscovery_title:
          patient.situationOfDiscovery,
    };
  }
}
