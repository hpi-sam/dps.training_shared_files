// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Project imports:
import 'package:bpmanv_app_sharedFiles/model/patient.dart';

/// Builds a container with rounded corners to represent a body part.
///
/// Has a list of [injuries] that are drawn as Icons on top of the container.
class BodyPart extends StatelessWidget {
  final double heightFactor;
  final double widthFactor;
  final radius;
  final List<InjuryType> injuries;
  final transformation;

  BodyPart({
    required this.heightFactor,
    required this.widthFactor,
    required this.radius,
    required this.injuries,
    this.transformation,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> markers = [];
    injuries.forEach((element) {
      switch (element) {
        case InjuryType.BLEEDING:
          markers.addAll([
            Icon(
              FontAwesomeIcons.tint,
              color: Colors.red,
            )
          ]); // alternative: fire, or map-marker if we can rotate it
          break;

        case InjuryType.CRITICAL_BLEEDING:
          markers.addAll([
            Icon(
              FontAwesomeIcons.wind,
              color: Colors.red,
            )
          ]);
          break;

        case InjuryType.FRACTURE:
          markers.addAll([
            Icon(
              FontAwesomeIcons.bone,
              color: Colors.black,
            )
          ]);
          break;
      }
    });
    var screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          transform: transformation,
          height: heightFactor * screenWidth,
          width: widthFactor * screenWidth,
          child: Column(
            children: markers,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          decoration: BoxDecoration(
            borderRadius: radius,
            border: Border.all(color: Colors.grey),
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class Head extends BodyPart {
  Head({@required injuries})
      : super(
            heightFactor: 0.17,
            widthFactor: 0.17,
            radius: BorderRadius.all(Radius.circular(100)),
            injuries: injuries);
}

class Thorax extends BodyPart {
  Thorax({@required injuries})
      : super(
            heightFactor: 0.15,
            widthFactor: 0.25,
            radius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            injuries: injuries);
}

class Abdomen extends BodyPart {
  Abdomen({@required injuries})
      : super(
            heightFactor: 0.15,
            widthFactor: 0.25,
            radius: BorderRadius.all(Radius.circular(0)),
            injuries: injuries);
}

class Pelvis extends BodyPart {
  Pelvis({@required injuries})
      : super(
            heightFactor: 0.15,
            widthFactor: 0.25,
            radius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            injuries: injuries);
}

class Leg extends BodyPart {
  Leg({@required injuries})
      : super(
            heightFactor: 0.35,
            widthFactor: 0.08,
            radius: BorderRadius.all(Radius.circular(20)),
            injuries: injuries);
}

class Arm extends BodyPart {
  Arm({@required injuries, transformation})
      : super(
            heightFactor: 0.4,
            widthFactor: 0.08,
            radius: BorderRadius.all(Radius.circular(20)),
            transformation: transformation,
            injuries: injuries);
}
