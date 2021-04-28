// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:bpmanv_app_sharedFiles/l10n/localizedstrings.dart';
import 'package:bpmanv_app_sharedFiles/model/patient.dart';
import 'package:bpmanv_app_sharedFiles/patient_information/util.dart';

/// Builds an injury description of a patient.
///
/// TODO: Design of this widget should be improved: https://github.com/hpi-sam/BPMANV-App/issues/39

class Injury extends StatefulWidget {
  final Patient patient;

  Injury({required this.patient});

  @override
  InjuryState createState() => new InjuryState();
}

class InjuryState extends State<Injury> {
  var headerValue;
  var expandedValue;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    this.headerValue = LocalizedStrings.injuryWidget_title;
    this.expandedValue = _getPatientInjury();
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
                  title: Text(this.headerValue,
                      style: TextStyle(color: highContrastColor(triageColor))),
                ),
              );
            },
            body: _buildInjuryFields(),
            isExpanded: this.isExpanded,
            canTapOnHeader: true,
          ),
        ],
      ),
    );
  }

  Container _buildInjuryFields() {
    List<Widget> _fieldWidgets = [];
    this.expandedValue.forEach((key, value) {
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

  Map<String, String> _getPatientInjury() {
    return {
      LocalizedStrings.injuryWidget_title: widget.patient.injuryDescription,
    };
  }
}
