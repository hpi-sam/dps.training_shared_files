// Flutter imports:
// Project imports:
import 'package:dps_training.shared_files/model/patient/patient.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'body_part_widget.dart';

/// Builds a visual representation of the patient.
///
/// Each body part of the patient is simulated with a BodyPartWidget. Each of
/// these widgets can display a list of different injuries, where each injury
/// type (bleeding, fracture, ...) has its own icon.
class PatientVisualization extends StatelessWidget {
  final Patient patient;
  final double width;

  PatientVisualization({required this.patient, required this.width});

  @override
  Widget build(BuildContext context) {
    return patient.isAlive
        ? _buildPatient()
        : LayoutBuilder(
            builder: (context, constraints) => Stack(
              children: [
                _buildPatient(),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Opacity(
                      opacity: 0.8,
                      child: Image.asset(
                        'assets/dead.png',
                        package: 'dps_training.shared_files',
                        width: constraints.maxWidth,
                        height: constraints.maxWidth,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }

  Widget _buildPatient() {
    return SizedBox(
      child: Column(
        children: [
          Head(
            injuries: patient.injuries.head,
            width: this.width,
          ),
          Padding(padding: EdgeInsets.only(top: this.width * 0.01)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Arm(
                injuries: patient.injuries.left_arm,
                width: this.width,
                transformation: Matrix4.skewX(3),
              ),
              Column(
                children: [
                  Thorax(injuries: patient.injuries.thorax, width: this.width),
                  Abdomen(
                      injuries: patient.injuries.abdomen, width: this.width),
                  Pelvis(injuries: patient.injuries.pelvis, width: this.width),
                ],
              ),
              // BodyCenter
              Arm(
                injuries: patient.injuries.right_arm,
                width: this.width,
                transformation: Matrix4.skewX(-3),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Leg(injuries: patient.injuries.left_leg, width: this.width),
              Padding(padding: EdgeInsets.only(left: this.width * 0.03)),
              Leg(injuries: patient.injuries.right_leg, width: this.width),
            ],
          )
        ],
      ),
    );
  }
}
