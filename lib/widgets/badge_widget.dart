import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:near_future_badges/badge_page.dart';
import 'package:near_future_badges/models/badge.dart';
import 'package:near_future_badges/widgets/flip_badge.dart';

class BadgeWidget extends StatelessWidget {
  final Badge badge;

  const BadgeWidget({super.key, required this.badge});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          color: Theme.of(context).cardColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: FlipBadge(badge: badge),
                // child: CachedNetworkImage(
                //   imageUrl: badge.imageUrl,
                //   progressIndicatorBuilder:
                //       (context, url, downloadProgress) =>
                //           CircularProgressIndicator(
                //               value: downloadProgress.progress),
                //   errorWidget: (context, url, error) =>
                //       const Icon(Icons.error),
                // ),
              ),
              Text(
                badge.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
