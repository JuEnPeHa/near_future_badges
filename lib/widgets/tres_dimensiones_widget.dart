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
        Transform(
          transform: Matrix4.identity()..translate(0.0, 0.0, 0.0)
          //..rotateY(-pi / 2),
          ,
          child: Container(
            color: Colors.limeAccent,
            child: LogoNEARFTVertical(size: 200),
          ),
        ),
        Transform(
          transform: Matrix4.identity()
            ..translate(0.0, 0.0, 0.0)
            ..rotateY(pi / 2),
          child: Container(
            color: Colors.pink,
            child: LogoNEARFTVertical(size: 200),
          ),
        ),
        Transform(
          transform: Matrix4.identity()
            ..translate(0.0, 0.0, 0.0)
            ..rotateX(-pi / 2),
          child: Container(
            color: Colors.lightGreen,
            child: LogoNEARFTVertical(size: 200),
          ),
        ),
      ],
    );
  }
}

// class BuildFace extends StatelessWidget {
//   const BuildFace(
//       {super.key,
//       required this.position,
//       required this.color,
//       required this.rotation});

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

// Text('Drag me!'),
//             Transform.translate(
//               offset: _offset,
//               child: const Text('I\'m flying!'),
//             ),