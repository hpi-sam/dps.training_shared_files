// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:dps.training_shared_files/l10n/shared_files_localizations.dart';
import 'package:dps.training_shared_files/models/patient/patient.dart';

/// Builds a widget displaying general patient data (injury and situation of discovery)
class GeneralInformationWidget extends StatelessWidget {
  final Patient patient;

  const GeneralInformationWidget({Key? key, required this.patient})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SharedFilesLocalizations localization = SharedFilesLocalizations.of(context)!;
    final data = _getGeneralInformation(localization);

    return Card(
      child: Column(
        children: [
          Text(
            SharedFilesLocalizations.of(context)!.generalInformationWidget_title,
            style: Theme.of(context).textTheme.headlineSmall,
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
    List<Widget> fieldWidgets = [];
    data.forEach((key, value) {
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

  Map<String, String> _getGeneralInformation(
      SharedFilesLocalizations localization) {
    return {
      localization.generalInformationWidget_injuries_title:
          patient.injuryDescription,
      localization.generalInformationWidget_situationOfDiscovery_title:
          patient.situationOfDiscovery,
    };
  }
}
