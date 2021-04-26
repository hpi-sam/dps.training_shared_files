import 'package:api_service/model/patient.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'body_part_widget.dart';

//Todo: Add neck injuries
//Todo: Add a visual legend of the used icon: https://github.com/hpi-sam/BPMANV-App/issues/15
/// Builds a visual representation of the patient.
///
/// Each body part of the patient is simulated with a BodyPartWidget. Each of
/// these widgets can display a list of different injuries, where each injury
/// type (bleeding, fracture, ...) has its own icon.
class PatientVisualization extends StatelessWidget {

  final PatientInjuries patientInjuries;

  PatientVisualization({required this.patientInjuries});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Head(injuries: patientInjuries.head),
        Padding(padding: EdgeInsets.only(top: screenWidth * 0.01)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Arm(
              injuries: patientInjuries.left_arm,
              transformation: Matrix4.skewX(3),
            ),
            Column(
              children: [
                Thorax(injuries: patientInjuries.thorax),
                Abdomen(injuries: patientInjuries.abdomen),
                Pelvis(injuries: patientInjuries.pelvis),
              ],
            ),
            // BodyCenter
            Arm(
              injuries: patientInjuries.right_arm,
              transformation: Matrix4.skewX(-3),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Leg(injuries: patientInjuries.left_leg),
            Padding(padding: EdgeInsets.only(left: screenWidth * 0.03)),
            Leg(injuries: patientInjuries.right_leg),
          ],
        )
      ],
    );
  }
}
