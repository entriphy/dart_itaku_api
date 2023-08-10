// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'tag.dart';
import 'user.dart';

part 'auth.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ItakuAuthUser {
  final ItakuUserProfile profile;
  final ItakuNSFWProfile? nsfwProfile;
  final ItakuAuthUserMeta meta;

  ItakuAuthUser({
    required this.profile,
    this.nsfwProfile,
    required this.meta,
  });

  factory ItakuAuthUser.fromJson(Map<String, dynamic> json) =>
      _$ItakuAuthUserFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuAuthUserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ItakuAuthUserLogin extends ItakuAuthUser {
  final String key;
  final int user;

  ItakuAuthUserLogin({
    required super.profile,
    super.nsfwProfile,
    required super.meta,
    required this.key,
    required this.user,
  });

  factory ItakuAuthUserLogin.fromJson(Map<String, dynamic> json) =>
      _$ItakuAuthUserLoginFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ItakuAuthUserLoginToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ItakuAuthUserMeta {
  final bool adMode;
  final List<ItakuTag> blacklistedTags;
  final List<int> blacklistedUsers;
  final List<int> blockedUsers;
  final bool emailUpdates;
  final bool hideNsfw;
  final bool hideNsfwPosts;
  final bool hideNsfwTags;
  final bool hideQuestionable;
  final bool muteSubmissionNotifs;
  final bool revealNsfw;
  final bool sfwFiltersByDefault;
  final bool showAdsAsSupporter;
  final bool showContentWarnings;
  final List<int> submissionNotifsMutedUsers;

  ItakuAuthUserMeta({
    required this.adMode,
    required this.blacklistedTags,
    required this.blacklistedUsers,
    required this.blockedUsers,
    required this.emailUpdates,
    required this.hideNsfw,
    required this.hideNsfwPosts,
    required this.hideNsfwTags,
    required this.hideQuestionable,
    required this.muteSubmissionNotifs,
    required this.revealNsfw,
    required this.sfwFiltersByDefault,
    required this.showAdsAsSupporter,
    required this.showContentWarnings,
    required this.submissionNotifsMutedUsers,
  });

  factory ItakuAuthUserMeta.fromJson(Map<String, dynamic> json) =>
      _$ItakuAuthUserMetaFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuAuthUserMetaToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ItakuAuthUserTagSet {
  final int id;
  final String name;
  final int numTags;
  final List<ItakuTag> tags;

  ItakuAuthUserTagSet({
    required this.id,
    required this.name,
    required this.numTags,
    required this.tags,
  });

  factory ItakuAuthUserTagSet.fromJson(Map<String, dynamic> json) =>
      _$ItakuAuthUserTagSetFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuAuthUserTagSetToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ItakuAuthUserBlacklistedBlockedUsers {
  final List<ItakuUserCompact> blacklistedUsers;
  final List<ItakuUserCompact> blockedUsers;

  ItakuAuthUserBlacklistedBlockedUsers({
    required this.blacklistedUsers,
    required this.blockedUsers,
  });

  factory ItakuAuthUserBlacklistedBlockedUsers.fromJson(
          Map<String, dynamic> json) =>
      _$ItakuAuthUserBlacklistedBlockedUsersFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ItakuAuthUserBlacklistedBlockedUsersToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ItakuAuthUserNotification {
  final String actionType;
  final int actor;
  final String actorAvatar;
  final String actorDisplayname;
  final String actorUsername;
  final String contentType;
  final DateTime dateAdded;
  final int id;
  final String message;
  final int objectId;
  final int owner;
  final bool read;
  final String resource;

  ItakuAuthUserNotification({
    required this.actionType,
    required this.actor,
    required this.actorAvatar,
    required this.actorDisplayname,
    required this.actorUsername,
    required this.contentType,
    required this.dateAdded,
    required this.id,
    required this.message,
    required this.objectId,
    required this.owner,
    required this.read,
    required this.resource,
  });

  factory ItakuAuthUserNotification.fromJson(Map<String, dynamic> json) =>
      _$ItakuAuthUserNotificationFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuAuthUserNotificationToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ItakuAuthException implements Exception {
  final List<String>? username;
  final List<String>? password;
  final List<String>? nonFieldErrors;

  ItakuAuthException({this.username, this.password, this.nonFieldErrors});

  factory ItakuAuthException.fromJson(Map<String, dynamic> json) =>
      _$ItakuAuthExceptionFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuAuthExceptionToJson(this);

  @override
  String toString() =>
      username?.toString() ??
      password?.toString() ??
      nonFieldErrors?.toString() ??
      "";
}

class ItakuUnauthenticatedException implements Exception {
  final String message;

  const ItakuUnauthenticatedException(this.message);
}
