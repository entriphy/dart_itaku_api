// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItakuUser _$ItakuUserFromJson(Map<String, dynamic> json) => ItakuUser(
      id: json['id'] as int,
      ownerUsername: json['owner_username'] as String,
      isStaff: json['is_staff'] as bool,
      isModerator: json['is_moderator'] as bool,
      bookmarkedByYou: json['bookmarked_by_you'] as bool,
      youFollow: json['you_follow'] as bool,
      followsYou: json['follows_you'] as bool,
      ownerAvatar: json['owner_avatar'] as String?,
      numFollowers: json['num_followers'] as int,
      coverSm: json['cover_sm'] as String,
      avatarMd: json['avatar_md'] as String,
      displayname: json['displayname'] as String,
      takingComms: json['taking_comms'] as bool,
      isArtist: json['is_artist'] as bool,
      isSupporter: json['is_supporter'] as bool,
      showStarred: json['show_starred'] as bool,
      lead: json['lead'] as String,
      avatarSm: json['avatar_sm'] as String,
      coverLg: json['cover_lg'] as String,
      matureProfile: json['mature_profile'] as bool,
      owner: json['owner'] as int,
      objTags: json['obj_tags'] as int,
      pinnedItem: json['pinned_item'] as int?,
    );

Map<String, dynamic> _$ItakuUserToJson(ItakuUser instance) => <String, dynamic>{
      'id': instance.id,
      'owner_username': instance.ownerUsername,
      'is_staff': instance.isStaff,
      'is_moderator': instance.isModerator,
      'bookmarked_by_you': instance.bookmarkedByYou,
      'you_follow': instance.youFollow,
      'follows_you': instance.followsYou,
      'owner_avatar': instance.ownerAvatar,
      'num_followers': instance.numFollowers,
      'cover_sm': instance.coverSm,
      'avatar_md': instance.avatarMd,
      'displayname': instance.displayname,
      'taking_comms': instance.takingComms,
      'is_artist': instance.isArtist,
      'is_supporter': instance.isSupporter,
      'show_starred': instance.showStarred,
      'lead': instance.lead,
      'avatar_sm': instance.avatarSm,
      'cover_lg': instance.coverLg,
      'mature_profile': instance.matureProfile,
      'owner': instance.owner,
      'obj_tags': instance.objTags,
      'pinned_item': instance.pinnedItem,
    };

ItakuUserProfile _$ItakuUserProfileFromJson(Map<String, dynamic> json) =>
    ItakuUserProfile(
      id: json['id'] as int,
      ownerUsername: json['owner_username'] as String,
      isStaff: json['is_staff'] as bool,
      isModerator: json['is_moderator'] as bool,
      bookmarkedByYou: json['bookmarked_by_you'] as bool,
      youFollow: json['you_follow'] as bool,
      followsYou: json['follows_you'] as bool,
      ownerAvatar: json['owner_avatar'] as String?,
      numFollowers: json['num_followers'] as int,
      coverSm: json['cover_sm'] as String,
      avatarMd: json['avatar_md'] as String,
      displayname: json['displayname'] as String,
      takingComms: json['taking_comms'] as bool,
      isArtist: json['is_artist'] as bool,
      isSupporter: json['is_supporter'] as bool,
      showStarred: json['show_starred'] as bool,
      lead: json['lead'] as String,
      avatarSm: json['avatar_sm'] as String,
      coverLg: json['cover_lg'] as String,
      matureProfile: json['mature_profile'] as bool,
      owner: json['owner'] as int,
      objTags: json['obj_tags'] as int,
      pinnedItem: json['pinned_item'] as int?,
      description: json['description'] as String,
      avatar: json['avatar'] as String,
      cover: json['cover'] as String,
      dateAdded: DateTime.parse(json['date_added'] as String),
      userSites: (json['user_sites'] as List<dynamic>)
          .map((e) => ItakuUserProfileSite.fromJson(e as Map<String, dynamic>))
          .toList(),
      emailVerified: json['email_verified'] as bool,
      country: json['country'] == null
          ? null
          : ItakuUserProfileCountry.fromJson(
              json['country'] as Map<String, dynamic>),
      blacklisted: json['blacklisted'] as bool,
      blocked: json['blocked'] as bool,
      submissionNotifsMuted: json['submission_notifs_muted'] as bool,
      tags: (json['tags'] as List<dynamic>)
          .map((e) => ItakuTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      numFollowing: json['num_following'] as int,
      numPosts: json['num_posts'] as int,
      numGalleryImages: json['num_gallery_images'] as int,
      numJoined: json['num_joined'] as int,
      numImagesStarred: json['num_images_starred'] as int,
      numBookmarkFolders: json['num_bookmark_folders'] as int,
      numResharesGiven: json['num_reshares_given'] as int,
      numCommentsGiven: json['num_comments_given'] as int,
      numTagsSuggestions: json['num_tags_suggestions'] as int,
      numTagsEdited: json['num_tags_edited'] as int,
      badgeCounts: (json['badge_counts'] as List<dynamic>)
          .map((e) =>
              ItakuUserProfileBadgeCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      commInfo: json['comm_info'] as String,
      commTos: json['comm_tos'] as String,
      dateEdited: json['date_edited'] == null
          ? null
          : DateTime.parse(json['date_edited'] as String),
    );

Map<String, dynamic> _$ItakuUserProfileToJson(ItakuUserProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_username': instance.ownerUsername,
      'is_staff': instance.isStaff,
      'is_moderator': instance.isModerator,
      'bookmarked_by_you': instance.bookmarkedByYou,
      'you_follow': instance.youFollow,
      'follows_you': instance.followsYou,
      'owner_avatar': instance.ownerAvatar,
      'num_followers': instance.numFollowers,
      'cover_sm': instance.coverSm,
      'avatar_md': instance.avatarMd,
      'displayname': instance.displayname,
      'taking_comms': instance.takingComms,
      'is_artist': instance.isArtist,
      'is_supporter': instance.isSupporter,
      'show_starred': instance.showStarred,
      'lead': instance.lead,
      'avatar_sm': instance.avatarSm,
      'cover_lg': instance.coverLg,
      'mature_profile': instance.matureProfile,
      'owner': instance.owner,
      'obj_tags': instance.objTags,
      'pinned_item': instance.pinnedItem,
      'avatar': instance.avatar,
      'description': instance.description,
      'cover': instance.cover,
      'date_added': instance.dateAdded.toIso8601String(),
      'user_sites': instance.userSites,
      'email_verified': instance.emailVerified,
      'country': instance.country,
      'blacklisted': instance.blacklisted,
      'blocked': instance.blocked,
      'submission_notifs_muted': instance.submissionNotifsMuted,
      'tags': instance.tags,
      'num_following': instance.numFollowing,
      'num_posts': instance.numPosts,
      'num_gallery_images': instance.numGalleryImages,
      'num_joined': instance.numJoined,
      'num_images_starred': instance.numImagesStarred,
      'num_bookmark_folders': instance.numBookmarkFolders,
      'num_reshares_given': instance.numResharesGiven,
      'num_comments_given': instance.numCommentsGiven,
      'num_tags_suggestions': instance.numTagsSuggestions,
      'num_tags_edited': instance.numTagsEdited,
      'badge_counts': instance.badgeCounts,
      'comm_info': instance.commInfo,
      'comm_tos': instance.commTos,
      'date_edited': instance.dateEdited?.toIso8601String(),
    };

ItakuNSFWProfile _$ItakuNSFWProfileFromJson(Map<String, dynamic> json) =>
    ItakuNSFWProfile(
      id: json['id'] as int,
      userSites: (json['user_sites'] as List<dynamic>)
          .map((e) => ItakuUserProfileSite.fromJson(e as Map<String, dynamic>))
          .toList(),
      lead: json['lead'] as String,
      description: json['description'] as String,
      avatar: json['avatar'] as String,
      cover: json['cover'] as String,
      avatarSm: json['avatar_sm'] as String,
      avatarMd: json['avatar_md'] as String,
      coverSm: json['cover_sm'] as String,
      coverLg: json['cover_lg'] as String,
      dateAdded: DateTime.parse(json['date_added'] as String),
      owner: json['owner'] as int,
    );

Map<String, dynamic> _$ItakuNSFWProfileToJson(ItakuNSFWProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_sites': instance.userSites,
      'lead': instance.lead,
      'description': instance.description,
      'avatar': instance.avatar,
      'cover': instance.cover,
      'avatar_sm': instance.avatarSm,
      'avatar_md': instance.avatarMd,
      'cover_sm': instance.coverSm,
      'cover_lg': instance.coverLg,
      'date_added': instance.dateAdded.toIso8601String(),
      'owner': instance.owner,
    };

ItakuUserProfileSite _$ItakuUserProfileSiteFromJson(
        Map<String, dynamic> json) =>
    ItakuUserProfileSite(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$ItakuUserProfileSiteToJson(
        ItakuUserProfileSite instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

ItakuUserProfileCountry _$ItakuUserProfileCountryFromJson(
        Map<String, dynamic> json) =>
    ItakuUserProfileCountry(
      code: json['code'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$ItakuUserProfileCountryToJson(
        ItakuUserProfileCountry instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };

ItakuUserProfileBadgeCount _$ItakuUserProfileBadgeCountFromJson(
        Map<String, dynamic> json) =>
    ItakuUserProfileBadgeCount(
      id: json['id'] as int,
      badge:
          ItakuUserProfileBadge.fromJson(json['badge'] as Map<String, dynamic>),
      count: json['count'] as int,
      dateEarned: DateTime.parse(json['date_earned'] as String),
      dateAdded: DateTime.parse(json['date_added'] as String),
      owner: json['owner'] as int,
    );

Map<String, dynamic> _$ItakuUserProfileBadgeCountToJson(
        ItakuUserProfileBadgeCount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'badge': instance.badge,
      'count': instance.count,
      'date_earned': instance.dateEarned.toIso8601String(),
      'date_added': instance.dateAdded.toIso8601String(),
      'owner': instance.owner,
    };

ItakuUserProfileBadge _$ItakuUserProfileBadgeFromJson(
        Map<String, dynamic> json) =>
    ItakuUserProfileBadge(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      badgeType: json['badge_type'] as String,
      orderRanking: json['order_ranking'] as int,
      category: json['category'] as String,
    );

Map<String, dynamic> _$ItakuUserProfileBadgeToJson(
        ItakuUserProfileBadge instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'badge_type': instance.badgeType,
      'order_ranking': instance.orderRanking,
      'category': instance.category,
    };
