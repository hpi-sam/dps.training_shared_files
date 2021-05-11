// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Project imports:
import 'package:bpmanv_app_sharedFiles/model/patient.dart';
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
  final double width;

  PatientVisualization({required this.patientInjuries, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Head(
            injuries: patientInjuries.head,
            width: this.width,
          ),
          Padding(padding: EdgeInsets.only(top: this.width * 0.01)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Arm(
                injuries: patientInjuries.left_arm,
                width: this.width,
                transformation: Matrix4.skewX(3),
              ),
              Column(
                children: [
                  Thorax(injuries: patientInjuries.thorax, width: this.width),
                  Abdomen(injuries: patientInjuries.abdomen, width: this.width),
                  Pelvis(injuries: patientInjuries.pelvis, width: this.width),
                ],
              ),
              // BodyCenter
              Arm(
                injuries: patientInjuries.right_arm,
                width: this.width,
                transformation: Matrix4.skewX(-3),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Leg(injuries: patientInjuries.left_leg, width: this.width),
              Padding(padding: EdgeInsets.only(left: this.width * 0.03)),
              Leg(injuries: patientInjuries.right_leg, width: this.width),
            ],
          )
        ],
      ),
    );
  }
}
