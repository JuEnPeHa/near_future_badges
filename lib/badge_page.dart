import 'package:flutter/material.dart';
import 'package:near_future_badges/const/testing.dart';
import 'package:near_future_badges/models/badge.dart';
import 'package:near_future_badges/widgets/flip_badge.dart';
import 'package:near_future_badges/widgets/tres_dimensiones_widget.dart';

class BadgePage extends StatelessWidget {
  final Badge badge = fillBadge[0];

  BadgePage({
    super.key,
    /*required this.badge*/
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Widget3D(badge: badge) /*FlipBadge(badge: badge)*/,
      ),
    );
  }
}
