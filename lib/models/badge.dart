class Badge {
  final String ownerId;
  final String userId;
  final String badgeId;
  final String imageUrl;
  final String title;
  final String description;
  final DateTime eventDate;

  Badge({
    required this.ownerId,
    required this.userId,
    required this.badgeId,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.eventDate,
  });

  factory Badge.fromJson(Map<String, dynamic> json) {
    return Badge(
      ownerId: json['ownerId'] as String,
      userId: json['userId'] as String,
      badgeId: json['badgeId'] as String,
      imageUrl: json['imageUrl'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      eventDate: DateTime.parse(json['eventDate'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ownerId': ownerId,
      'userId': userId,
      'badgeId': badgeId,
      'imageUrl': imageUrl,
      'title': title,
      'description': description,
      'eventDate': eventDate.toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Badge{ownerId: $ownerId, userId: $userId, badgeId: $badgeId, imageUrl: $imageUrl, title: $title, description: $description, eventDate: $eventDate}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Badge &&
          runtimeType == other.runtimeType &&
          ownerId == other.ownerId &&
          userId == other.userId &&
          badgeId == other.badgeId &&
          imageUrl == other.imageUrl &&
          title == other.title &&
          description == other.description &&
          eventDate == other.eventDate;

  @override
  int get hashCode =>
      ownerId.hashCode ^
      userId.hashCode ^
      badgeId.hashCode ^
      imageUrl.hashCode ^
      title.hashCode ^
      description.hashCode ^
      eventDate.hashCode;

  static const String tableName = 'badges';
  static const String columnId = 'id';
  static const String columnOwnerId = 'ownerId';
  static const String columnUserId = 'userId';
  static const String columnBadgeId = 'badgeId';
  static const String columnImageUrl = 'imageUrl';
  static const String columnTitle = 'title';
  static const String columnDescription = 'description';
  static const String columnEventDate = 'eventDate';

  static const String createTableQuery = '''
    CREATE TABLE $tableName (
      $columnId INTEGER PRIMARY KEY,
      $columnOwnerId TEXT NOT NULL,
      $columnUserId TEXT NOT NULL,
      $columnBadgeId TEXT NOT NULL,
      $columnImageUrl TEXT NOT NULL,
      $columnTitle TEXT NOT NULL,
      $columnDescription TEXT NOT NULL,
      $columnEventDate TEXT NOT NULL
    )
  ''';

  static const String insertQuery = '''
    INSERT INTO $tableName (
      $columnOwnerId,
      $columnUserId,
      $columnBadgeId,
      $columnImageUrl,
      $columnTitle,
      $columnDescription,
      $columnEventDate
    ) VALUES (?, ?, ?, ?, ?, ?, ?)
  ''';

  static const String updateQuery = '''
    UPDATE $tableName SET
      $columnOwnerId = ?,
      $columnUserId = ?,
      $columnBadgeId = ?,
      $columnImageUrl = ?,
      $columnTitle = ?,
      $columnDescription = ?,
      $columnEventDate = ?
    WHERE $columnId = ?
  ''';

  static const String deleteQuery = '''
    DELETE FROM $tableName WHERE $columnId = ?
  ''';

  static const String selectQuery = '''
    SELECT * FROM $tableName
  ''';

  static const String selectWhereQuery = '''
    SELECT * FROM $tableName WHERE $columnId = ?
  ''';

  static const String selectWhereOwnerIdQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ?
  ''';

  static const String selectWhereUserIdQuery = '''
    SELECT * FROM $tableName WHERE $columnUserId = ?
  ''';

  static const String selectWhereBadgeIdQuery = '''
    SELECT * FROM $tableName WHERE $columnBadgeId = ?
  ''';

  static const String selectWhereImageUrlQuery = '''
    SELECT * FROM $tableName WHERE $columnImageUrl = ?
  ''';

  static const String selectWhereTitleQuery = '''
    SELECT * FROM $tableName WHERE $columnTitle = ?
  ''';

  static const String selectWhereDescriptionQuery = '''
    SELECT * FROM $tableName WHERE $columnDescription = ?
  ''';

  static const String selectWhereEventDateQuery = '''
    SELECT * FROM $tableName WHERE $columnEventDate = ?
  ''';

  static const String selectWhereOwnerIdAndUserIdQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ? AND $columnUserId = ?
  ''';

  static const String selectWhereOwnerIdAndBadgeIdQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ? AND $columnBadgeId = ?
  ''';

  static const String selectWhereOwnerIdAndImageUrlQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ? AND $columnImageUrl = ?
  ''';

  static const String selectWhereOwnerIdAndTitleQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ? AND $columnTitle = ?
  ''';

  static const String selectWhereOwnerIdAndDescriptionQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ? AND $columnDescription = ?
  ''';

  static const String selectWhereOwnerIdAndEventDateQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ? AND $columnEventDate = ?
  ''';

  static const String selectWhereUserIdAndBadgeIdQuery = '''
    SELECT * FROM $tableName WHERE $columnUserId = ? AND $columnBadgeId = ?
  ''';

  static const String selectWhereUserIdAndImageUrlQuery = '''
    SELECT * FROM $tableName WHERE $columnUserId = ? AND $columnImageUrl = ?
  ''';

  static const String selectWhereUserIdAndTitleQuery = '''
    SELECT * FROM $tableName WHERE $columnUserId = ? AND $columnTitle = ?
  ''';

  static const String selectWhereUserIdAndDescriptionQuery = '''
    SELECT * FROM $tableName WHERE $columnUserId = ? AND $columnDescription = ?
  ''';

  static const String selectWhereUserIdAndEventDateQuery = '''
    SELECT * FROM $tableName WHERE $columnUserId = ? AND $columnEventDate = ?
  ''';

  static const String selectWhereBadgeIdAndImageUrlQuery = '''
    SELECT * FROM $tableName WHERE $columnBadgeId = ? AND $columnImageUrl = ?
  ''';

  static const String selectWhereBadgeIdAndTitleQuery = '''
    SELECT * FROM $tableName WHERE $columnBadgeId = ? AND $columnTitle = ?
  ''';

  static const String selectWhereBadgeIdAndDescriptionQuery = '''
    SELECT * FROM $tableName WHERE $columnBadgeId = ? AND $columnDescription = ?
  ''';

  static const String selectWhereBadgeIdAndEventDateQuery = '''
    SELECT * FROM $tableName WHERE $columnBadgeId = ? AND $columnEventDate = ?
  ''';

  static const String selectWhereImageUrlAndTitleQuery = '''
    SELECT * FROM $tableName WHERE $columnImageUrl = ? AND $columnTitle = ?
  ''';

  static const String selectWhereImageUrlAndDescriptionQuery = '''
    SELECT * FROM $tableName WHERE $columnImageUrl = ? AND $columnDescription = ?
  ''';

  static const String selectWhereImageUrlAndEventDateQuery = '''
    SELECT * FROM $tableName WHERE $columnImageUrl = ? AND $columnEventDate = ?
  ''';

  static const String selectWhereTitleAndDescriptionQuery = '''
    SELECT * FROM $tableName WHERE $columnTitle = ? AND $columnDescription = ?
  ''';

  static const String selectWhereTitleAndEventDateQuery = '''
    SELECT * FROM $tableName WHERE $columnTitle = ? AND $columnEventDate = ?
  ''';

  static const String selectWhereDescriptionAndEventDateQuery = '''
    SELECT * FROM $tableName WHERE $columnDescription = ? AND $columnEventDate = ?
  ''';

  static const String selectWhereOwnerIdAndUserIdAndBadgeIdQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ? AND $columnUserId = ? AND $columnBadgeId = ?
  ''';

  static const String selectWhereOwnerIdAndUserIdAndImageUrlQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ? AND $columnUserId = ? AND $columnImageUrl = ?
  ''';

  static const String selectWhereOwnerIdAndUserIdAndTitleQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ? AND $columnUserId = ? AND $columnTitle = ?
  ''';

  static const String selectWhereOwnerIdAndUserIdAndDescriptionQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ? AND $columnUserId = ? AND $columnDescription = ?
  ''';

  static const String selectWhereOwnerIdAndUserIdAndEventDateQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ? AND $columnUserId = ? AND $columnEventDate = ?
  ''';

  static const String selectWhereOwnerIdAndBadgeIdAndImageUrlQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ? AND $columnBadgeId = ? AND $columnImageUrl = ?
  ''';

  static const String selectWhereOwnerIdAndBadgeIdAndTitleQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ? AND $columnBadgeId = ? AND $columnTitle = ?
  ''';

  static const String selectWhereOwnerIdAndBadgeIdAndDescriptionQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ? AND $columnBadgeId = ? AND $columnDescription = ?
  ''';

  static const String selectWhereOwnerIdAndBadgeIdAndEventDateQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ? AND $columnBadgeId = ? AND $columnEventDate = ?
  ''';

  static const String selectWhereOwnerIdAndImageUrlAndTitleQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ? AND $columnImageUrl = ? AND $columnTitle = ?
  ''';

  static const String selectWhereOwnerIdAndImageUrlAndDescriptionQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ? AND $columnImageUrl = ? AND $columnDescription = ?
  ''';

  static const String selectWhereOwnerIdAndImageUrlAndEventDateQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ? AND $columnImageUrl = ? AND $columnEventDate = ?
  ''';

  static const String selectWhereOwnerIdAndTitleAndDescriptionQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ? AND $columnTitle = ? AND $columnDescription = ?
  ''';

  static const String selectWhereOwnerIdAndTitleAndEventDateQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ? AND $columnTitle = ? AND $columnEventDate = ?
  ''';

  static const String selectWhereOwnerIdAndDescriptionAndEventDateQuery = '''
    SELECT * FROM $tableName WHERE $columnOwnerId = ? AND $columnDescription = ? AND $columnEventDate = ?
  ''';

  static const String selectWhereUserIdAndBadgeIdAndImageUrlQuery = '''
    SELECT * FROM $tableName WHERE $columnUserId = ? AND $columnBadgeId = ? AND $columnImageUrl = ?
  ''';

  static const String selectWhereUserIdAndBadgeIdAndTitleQuery = '''
    SELECT * FROM $tableName WHERE $columnUserId = ? AND $columnBadgeId = ? AND $columnTitle = ?
  ''';

  static const String selectWhereUserIdAndBadgeIdAndDescriptionQuery = '''
    SELECT * FROM $tableName WHERE $columnUserId = ? AND $columnBadgeId = ? AND $columnDescription = ?
  ''';

  static const String selectWhereUserIdAndBadgeIdAndEventDateQuery = '''
    SELECT * FROM $tableName WHERE $columnUserId = ? AND $columnBadgeId = ? AND $columnEventDate = ?
  ''';

  static const String selectWhereUserIdAndImageUrlAndTitleQuery = '''
    SELECT * FROM $tableName WHERE $columnUserId = ? AND $columnImageUrl = ? AND $columnTitle = ?
  ''';

  static const String selectWhereUserIdAndImageUrlAndDescriptionQuery = '''
    SELECT * FROM $tableName WHERE $columnUserId = ? AND $columnImageUrl = ? AND $columnDescription = ?
  ''';

  static const String selectWhereUserIdAndImageUrlAndEventDateQuery = '''
    SELECT * FROM $tableName WHERE $columnUserId = ? AND $columnImageUrl = ? AND $columnEventDate = ?
  ''';

  static const String selectWhereUserIdAndTitleAndDescriptionQuery = '''
    SELECT * FROM $tableName WHERE $columnUserId = ? AND $columnTitle = ? AND $columnDescription = ?
  ''';

  static const String selectWhereUserIdAndTitleAndEventDateQuery = '''
    SELECT * FROM $tableName WHERE $columnUserId = ? AND $columnTitle = ? AND $columnEventDate = ?
  ''';

  static const String selectWhereUserIdAndDescriptionAndEventDateQuery = '''
    SELECT * FROM $tableName WHERE $columnUserId = ? AND $columnDescription = ? AND $columnEventDate = ?
  ''';

  static const String selectWhereBadgeIdAndImageUrlAndTitleQuery = '''
    SELECT * FROM $tableName WHERE $columnBadgeId = ? AND $columnImageUrl = ? AND $columnTitle = ?
  ''';

  static const String selectWhereBadgeIdAndImageUrlAndDescriptionQuery = '''
    SELECT * FROM $tableName WHERE $columnBadgeId = ? AND $columnImageUrl = ? AND $columnDescription = ?
  ''';

  static const String selectWhereBadgeIdAndImageUrlAndEventDateQuery = '''
    SELECT * FROM $tableName WHERE $columnBadgeId = ? AND $columnImageUrl = ? AND $columnEventDate = ?
  ''';

  static const String selectWhereBadgeIdAndTitleAndDescriptionQuery = '''
    SELECT * FROM $tableName WHERE $columnBadgeId = ? AND $columnTitle = ? AND $columnDescription = ?
  ''';

  static const String selectWhereBadgeIdAndTitleAndEventDateQuery = '''
    SELECT * FROM $tableName WHERE $columnBadgeId = ? AND $columnTitle = ? AND $columnEventDate = ?
  ''';

  static const String selectWhereBadgeIdAndDescriptionAndEventDateQuery = '''
    SELECT * FROM $tableName WHERE $columnBadgeId = ? AND $columnDescription = ? AND $columnEventDate = ?
  ''';
}
