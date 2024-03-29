// Flutter imports:
import 'package:flutter/material.dart';

/// Builds a container with rounded corners to represent a body part.
///
/// Has a list of [injuries] that are drawn as Icons on top of the container.
class BodyPart extends StatelessWidget {
  final double heightFactor;
  final double widthFactor;
  final radius;
  final List<String> injuries;
  final transformation;
  final double width;

  BodyPart({
    required this.heightFactor,
    required this.widthFactor,
    required this.radius,
    required this.injuries,
    required this.width,
    this.transformation,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> markers = [];
    injuries.forEach((element) {
      switch (element) {
        case "bleeding":
          markers.addAll([
            new Image.asset('assets/icons/bleeding_icon.png',
                package: 'dps.training_shared_files',
                height: IconTheme.of(context).size! * 1.5,
                width: IconTheme.of(context).size! * 1.5)
          ]); // alternative: fire, or map-marker if we can rotate it
          break;

        case "critical bleeding":
          markers.addAll([
            new Image.asset('assets/icons/critical_bleeding_icon.png',
                package: 'dps.training_shared_files',
                height: IconTheme.of(context).size! * 1.5,
                width: IconTheme.of(context).size! * 1.5),
          ]);
          break;

        case "fracture":
          markers.addAll([
            new Image.asset('assets/icons/fracture_icon.png',
                package: 'dps.training_shared_files',
                height: IconTheme.of(context).size! * 1.5,
                width: IconTheme.of(context).size! * 1.5)
          ]);
          break;
      }
    });
    return Stack(
      children: [
        Container(
          transform: transformation,
          height: heightFactor * this.width,
          width: widthFactor * this.width,
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
  Head({required List<String> injuries, required double width})
      : super(
            width: width,
            heightFactor: 0.17,
            widthFactor: 0.17,
            radius: BorderRadius.all(Radius.circular(100)),
            injuries: injuries);
}

class Thorax extends BodyPart {
  Thorax({required List<String> injuries, required double width})
      : super(
            width: width,
            heightFactor: 0.15,
            widthFactor: 0.25,
            radius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            injuries: injuries);
}

class Abdomen extends BodyPart {
  Abdomen({required List<String> injuries, required double width})
      : super(
            width: width,
            heightFactor: 0.15,
            widthFactor: 0.25,
            radius: BorderRadius.all(Radius.circular(0)),
            injuries: injuries);
}

class Pelvis extends BodyPart {
  Pelvis({required List<String> injuries, required double width})
      : super(
            width: width,
            heightFactor: 0.15,
            widthFactor: 0.25,
            radius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            injuries: injuries);
}

class Leg extends BodyPart {
  Leg({required List<String> injuries, required double width})
      : super(
            width: width,
            heightFactor: 0.35,
            widthFactor: 0.08,
            radius: BorderRadius.all(Radius.circular(20)),
            injuries: injuries);
}

class Arm extends BodyPart {
  Arm({required List<String> injuries, required double width, transformation})
      : super(
            width: width,
            heightFactor: 0.4,
            widthFactor: 0.08,
            radius: BorderRadius.all(Radius.circular(20)),
            transformation: transformation,
            injuries: injuries);
}
