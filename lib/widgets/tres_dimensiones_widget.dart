import 'dart:math';

import 'package:flutter/material.dart';
import 'package:near_future_badges/widgets/logo_widget.dart';

class Widget3D extends StatefulWidget {
  const Widget3D({super.key});

  @override
  State<Widget3D> createState() => _Widget3DState();
}

class _Widget3DState extends State<Widget3D> {
  Offset _offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        print('onPanUpdate');
        print(details);
        setState(() {
          _offset += details.delta;
        });
      },
      child: Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, -0.001)
          ..rotateX(-_offset.dy * pi / 180)
          ..rotateY(_offset.dx * pi / 180),
        alignment: Alignment.center,
        child: Center(
          child: Cube(),
        ),
      ),
    );
  }
}

class Cube extends StatelessWidget {
  const Cube({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BuildFace(
          position1: 0.0,
          position2: 0.0,
          position3: 0.0,
          rotation: -pi / 2,
          color: Colors.red,
          child: FlutterLogo(
            size: 200,
          ),
        ),
        BuildFace(
          position1: 0.0,
          position2: 0.0,
          position3: 0.0,
          rotation: pi / 2,
          color: Colors.green,
          child: FlutterLogo(
            size: 200,
          ),
        ),
        BuildFace(
          position1: 0.0,
          position2: 0.0,
          position3: 0.0,
          rotation: pi / 2,
          color: Colors.indigo,
          child: FlutterLogo(
            size: 200,
          ),
        ),
        BuildFace(
          position1: 0.0,
          position2: 0.0,
          position3: 0.0,
          rotation: -pi / 2,
          color: Colors.black,
          child: FlutterLogo(
            size: 200,
          ),
        ),
      ],
    );
  }
}

class BuildFace extends StatelessWidget {
  const BuildFace({
    super.key,
    required this.position1,
    required this.position2,
    required this.position3,
    required this.color,
    required this.child,
    required this.rotation,
  });
  final dynamic position1;
  final double position2;
  final double position3;
  final Color color;
  final Widget child;
  final double rotation;

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..translate(position1, position2, position3)
        ..rotateX(-pi / 2),
      child: Container(
        color: color,
        child: child,
      ),
    );
  }
}

// Text('Drag me!'),
//             Transform.translate(
//               offset: _offset,
//               child: const Text('I\'m flying!'),
//             ),