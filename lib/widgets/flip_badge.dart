import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:near_future_badges/models/badge.dart';
import 'package:near_future_badges/widgets/logo_widget.dart';

class FlipBadge extends StatefulWidget {
  const FlipBadge({super.key, required this.badge});
  final Badge badge;

  @override
  State<FlipBadge> createState() => _FlipBadgeState();
}

class _FlipBadgeState extends State<FlipBadge> {
  bool isFront = true;
  double dragPosition = 0;
  @override
  Widget build(BuildContext context) {
    final angle = dragPosition / 180 * pi;
    final transform = Matrix4.identity()
      ..setEntry(3, 2, 0.001)
      ..rotateY(angle);
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        setState(() {
          dragPosition -= details.delta.dx;
          dragPosition %= 360;

          setImageSide();
        });
      },
      child: Transform(
        transform: transform,
        alignment: Alignment.center,
        child: isFront
            ? CachedNetworkImage(imageUrl: widget.badge.imageUrl)
            : Transform(
                transform: Matrix4.identity()..rotateY(pi),
                alignment: Alignment.center,
                child: Container(
                    color: Theme.of(context).primaryColor,
                    child: LogoNEARFTVertical(
                      size: 200,
                    ))),
      ),
    );
  }

  void setImageSide() {
    if (dragPosition <= 90 || dragPosition >= 270) {
      isFront = true;
    } else {
      isFront = false;
    }
  }
}
