import 'package:near_future_badges/models/badge.dart';

List<Badge> fillStartedBadges({int? maxLength}) {
  maxLength = maxLength ?? 10;
  final List<Badge> badges = <Badge>[];
  for (int i = 0; i < maxLength; i++) {
    badges.add(
      Badge(
        ownerId: "jeph.near",
        badgeId: "badge_$i",
        eventDate: DateTime.now().add(Duration(days: i)),
        title: 'Near Future',
        userId: "jeph.near",
        description:
            'Near Future is a non-profit organization that provides free, open-source software for the community.',
        imageUrl: 'https://picsum.photos/id/${i + 125}/200/200',
      ),
    );
  }
  return badges;
}

List<Badge> fillBadge = fillStartedBadges();
