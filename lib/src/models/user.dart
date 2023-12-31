// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'commission.dart';
import 'feed.dart';
import 'image.dart';
import 'tag.dart';

part 'user.g.dart';

@JsonSerializable()
class ItakuUserCompact {
  final int id;
  final String ownerUsername;
  final bool isModerator;
  final bool bookmarkedByYou;
  final bool youFollow;
  final bool followsYou;
  final String? ownerAvatar;
  final String displayname;
  final bool showStarred;
  final String lead;
  final String avatarSm;
  final String coverLg;
  final bool matureProfile;
  final int owner;
  final int objTags;

  ItakuUserCompact({
    required this.id,
    required this.ownerUsername,
    required this.isModerator,
    required this.bookmarkedByYou,
    required this.youFollow,
    required this.followsYou,
    this.ownerAvatar,
    required this.displayname,
    required this.showStarred,
    required this.lead,
    required this.avatarSm,
    required this.coverLg,
    required this.matureProfile,
    required this.owner,
    required this.objTags,
  });

  factory ItakuUserCompact.fromJson(Map<String, dynamic> json) =>
      _$ItakuUserCompactFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuUserCompactToJson(this);
}

@JsonSerializable()
class ItakuUser extends ItakuUserCompact {
  final bool isStaff;
  final int numFollowers;
  final String coverSm;
  final String avatarMd;
  final bool takingComms;
  final bool isArtist;
  final bool isSupporter;
  final int? pinnedItem;

  ItakuUser({
    // Super
    required super.id,
    required super.ownerUsername,
    required super.isModerator,
    required super.bookmarkedByYou,
    required super.youFollow,
    required super.followsYou,
    super.ownerAvatar,
    required super.displayname,
    required super.showStarred,
    required super.lead,
    required super.avatarSm,
    required super.coverLg,
    required super.matureProfile,
    required super.owner,
    required super.objTags,
    // This
    required this.isStaff,
    required this.numFollowers,
    required this.coverSm,
    required this.avatarMd,
    required this.takingComms,
    required this.isArtist,
    required this.isSupporter,
    this.pinnedItem,
  });

  factory ItakuUser.fromJson(Map<String, dynamic> json) =>
      _$ItakuUserFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ItakuUserToJson(this);
}

abstract class ItakuProfile {
  final int id;
  final List<ItakuUserProfileSite> userSites;
  final String lead;
  final String description;
  final String avatar;
  final String cover;
  final String avatarSm;
  final String avatarMd;
  final String coverSm;
  final String coverLg;
  final DateTime dateAdded;
  final int owner;

  ItakuProfile({
    required this.id,
    required this.userSites,
    required this.lead,
    required this.description,
    required this.avatar,
    required this.cover,
    required this.avatarSm,
    required this.avatarMd,
    required this.coverSm,
    required this.coverLg,
    required this.dateAdded,
    required this.owner,
  });
}

@JsonSerializable()
class ItakuUserProfile extends ItakuUser implements ItakuProfile {
  @override
  final String avatar;
  @override
  final String description;
  @override
  final String cover;
  @override
  final DateTime dateAdded;
  @override
  final List<ItakuUserProfileSite> userSites;

  final bool emailVerified;
  final ItakuUserProfileCountry? country;
  final bool blacklisted;
  final bool blocked;
  final bool submissionNotifsMuted;
  final List<ItakuTag> tags;
  final int numFollowing;
  final int numPosts;
  final int numGalleryImages;
  final int numJoined;
  final int numImagesStarred;
  final int numBookmarkFolders;
  final int numResharesGiven;
  final int numCommentsGiven;
  final int numTagsSuggestions;
  final int numTagsEdited;
  final List<ItakuUserProfileBadgeCount> badgeCounts;
  final String commInfo;
  final String commTos;
  final DateTime? dateEdited;

  ItakuUserProfile({
    // Super
    required super.id,
    required super.ownerUsername,
    required super.isStaff,
    required super.isModerator,
    required super.bookmarkedByYou,
    required super.youFollow,
    required super.followsYou,
    required super.ownerAvatar,
    required super.numFollowers,
    required super.coverSm,
    required super.avatarMd,
    required super.displayname,
    required super.takingComms,
    required super.isArtist,
    required super.isSupporter,
    required super.showStarred,
    required super.lead,
    required super.avatarSm,
    required super.coverLg,
    required super.matureProfile,
    required super.owner,
    required super.objTags,
    super.pinnedItem,
    // Profile
    required this.description,
    required this.avatar,
    required this.cover,
    required this.dateAdded,
    required this.userSites,
    // This
    required this.emailVerified,
    required this.country,
    required this.blacklisted,
    required this.blocked,
    required this.submissionNotifsMuted,
    required this.tags,
    required this.numFollowing,
    required this.numPosts,
    required this.numGalleryImages,
    required this.numJoined,
    required this.numImagesStarred,
    required this.numBookmarkFolders,
    required this.numResharesGiven,
    required this.numCommentsGiven,
    required this.numTagsSuggestions,
    required this.numTagsEdited,
    required this.badgeCounts,
    required this.commInfo,
    required this.commTos,
    required this.dateEdited,
  });

  factory ItakuUserProfile.fromJson(Map<String, dynamic> json) {
    if (json["country"] == "") {
      // why does the site use an empty string lol
      json["country"] = null;
    }
    return _$ItakuUserProfileFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$ItakuUserProfileToJson(this);
}

@JsonSerializable()
class ItakuNSFWProfile implements ItakuProfile {
  @override
  final int id;
  @override
  final List<ItakuUserProfileSite> userSites;
  @override
  final String lead;
  @override
  final String description;
  @override
  final String avatar;
  @override
  final String cover;
  @override
  final String avatarSm;
  @override
  final String avatarMd;
  @override
  final String coverSm;
  @override
  final String coverLg;
  @override
  final DateTime dateAdded;
  @override
  final int owner;

  ItakuNSFWProfile({
    required this.id,
    required this.userSites,
    required this.lead,
    required this.description,
    required this.avatar,
    required this.cover,
    required this.avatarSm,
    required this.avatarMd,
    required this.coverSm,
    required this.coverLg,
    required this.dateAdded,
    required this.owner,
  });

  factory ItakuNSFWProfile.fromJson(Map<String, dynamic> json) =>
      _$ItakuNSFWProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuNSFWProfileToJson(this);
}

@JsonSerializable()
class ItakuUserProfileSite {
  final String name;
  final String url;

  ItakuUserProfileSite({
    required this.name,
    required this.url,
  });

  factory ItakuUserProfileSite.fromJson(Map<String, dynamic> json) =>
      _$ItakuUserProfileSiteFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuUserProfileSiteToJson(this);
}

@JsonSerializable()
class ItakuUserProfileCountry {
  final String code;
  final String name;

  ItakuUserProfileCountry({
    required this.code,
    required this.name,
  });

  factory ItakuUserProfileCountry.fromJson(Map<String, dynamic> json) =>
      _$ItakuUserProfileCountryFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuUserProfileCountryToJson(this);
}

@JsonSerializable()
class ItakuUserProfileBadgeCount {
  final int id;
  final ItakuUserProfileBadge badge;
  final int count;
  final DateTime dateEarned;
  final DateTime dateAdded;
  final int owner;

  ItakuUserProfileBadgeCount({
    required this.id,
    required this.badge,
    required this.count,
    required this.dateEarned,
    required this.dateAdded,
    required this.owner,
  });

  factory ItakuUserProfileBadgeCount.fromJson(Map<String, dynamic> json) =>
      _$ItakuUserProfileBadgeCountFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuUserProfileBadgeCountToJson(this);
}

@JsonSerializable()
class ItakuUserProfileBadge {
  final int id;
  final String title;
  final String description;
  final String image;
  final String badgeType;
  final int orderRanking;
  final String category;

  ItakuUserProfileBadge({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.badgeType,
    required this.orderRanking,
    required this.category,
  });

  factory ItakuUserProfileBadge.fromJson(Map<String, dynamic> json) =>
      _$ItakuUserProfileBadgeFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuUserProfileBadgeToJson(this);
}

@JsonSerializable()
class ItakuBookmarkFolder {
  final int id;
  final int numObjects;
  final bool private;
  final String title;

  ItakuBookmarkFolder({
    required this.id,
    required this.numObjects,
    required this.private,
    required this.title,
  });

  factory ItakuBookmarkFolder.fromJson(Map<String, dynamic> json) =>
      _$ItakuBookmarkFolderFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuBookmarkFolderToJson(this);
}

@JsonSerializable()
class ItakuUserLatestContent {
  final List<ItakuCommission> latestActiveCommissions;
  final List<ItakuImage> latestGalleryImages;
  final ItakuFeedItem? pinnedItem;
  final List<ItakuImage>? recentlyLikedImages;

  ItakuUserLatestContent({
    required this.latestActiveCommissions,
    required this.latestGalleryImages,
    this.pinnedItem,
    this.recentlyLikedImages,
  });

  factory ItakuUserLatestContent.fromJson(Map<String, dynamic> json) =>
      _$ItakuUserLatestContentFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuUserLatestContentToJson(this);
}
