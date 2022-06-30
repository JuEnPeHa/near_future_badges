import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:near_future_badges/models/badge.dart';
import 'package:near_future_badges/widgets/logo_widget.dart';

class Widget3D extends StatefulWidget {
  const Widget3D({super.key, required this.badge});
  final Badge badge;

  @override
  State<Widget3D> createState() => _Widget3DState();
}

class _Widget3DState extends State<Widget3D> {
  //Offset _offset = Offset.zero;
  double _rx = 0.0, _ry = 0.0 /*, _rz = 0.0*/;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 300,
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              RotatedBox(
                quarterTurns: 3,
                child: Slider(
                  value: _rx,
                  min: pi * -2,
                  max: pi * 2,
                  onChanged: (value) => setState(() => _rx = value),
                ),
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                // onPanUpdate: (DragUpdateDetails details) {
                //   _rx += details.delta.dx * 0.01;
                //   _ry += details.delta.dy * 0.01;
                //   print('onPanUpdate');
                //   print(details);
                //   setState(() {
                //     //_offset += details.delta;
                //     _rx %= pi * 2;
                //     _ry %= pi * 2;
                //   });
                // },
                child: Transform(
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, -0.001)
                    ..rotateX(_rx)
                    ..rotateY(_ry),
                  alignment: Alignment.center,
                  child: Center(
                    child: Cube(
                      frontImage:
                          CachedNetworkImageProvider(widget.badge.imageUrl),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Slider(
                  value: _ry,
                  min: pi * -2,
                  max: pi * 2,
                  onChanged: (double value) {
                    setState(() {
                      _ry = value;
                    });
                  })
            ],
          ),
        ],
      ),
    );
  }
}

class Cube extends StatelessWidget {
  const Cube({super.key, required this.frontImage});
  final ImageProvider frontImage;

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
            child: Image(
              image: frontImage,
              fit: BoxFit.cover,
            ),
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