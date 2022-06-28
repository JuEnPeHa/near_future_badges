import 'package:flutter/material.dart';
import 'package:near_future_badges/const/testing.dart';
import 'package:near_future_badges/models/badge.dart';
import 'package:near_future_badges/widgets/badge_widget.dart';
import 'package:near_future_badges/widgets/logo_widget.dart';

class BadgesPage extends StatelessWidget {
  List<Badge>? badges;
  static const String titleShort = ' NFT - Badges';

  BadgesPage({
    super.key,
    required this.title,
    this.badges,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    final List<Badge> badgesNotNull = badges ?? fillBadge;
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                size.width > 550
                    ? const LogoNEARFTHorizontal()
                    : const LogoNEARFTVertical(),
                Flexible(
                  child: size.width > 400
                      ? Text(title)
                      : size.width > 250
                          ? Text(titleShort)
                          : Text(titleShort.substring(1, 4)),
                ),
                size.width > 545
                    ? const SizedBox(
                        width: 10,
                      )
                    : const SizedBox(),
              ],
            ),
            floating: true,
            snap: true,
          ),
          // SliverList(
          //   delegate: SliverChildListDelegate(
          //     <Widget>[
          //       const LogoNEARFTHorizontal(),
          //       const LogoNEARFTVertical(),
          //     ],
          //   ),
          // ),
          SliverGrid.count(
            crossAxisSpacing: 15,
            childAspectRatio: 0.80,
            crossAxisCount: (size.width ~/ 250 > 0) ? size.width ~/ 250 : 1,
            children: badgesNotNull
                .map((Badge badge) => BadgeWidget(badge: badge))
                .toList(),
          ),
        ],
      ),
    );
  }
}
