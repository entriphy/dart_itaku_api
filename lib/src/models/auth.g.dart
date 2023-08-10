// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItakuAuthUser _$ItakuAuthUserFromJson(Map<String, dynamic> json) =>
    ItakuAuthUser(
      profile:
          ItakuUserProfile.fromJson(json['profile'] as Map<String, dynamic>),
      nsfwProfile: json['nsfw_profile'] == null
          ? null
          : ItakuNSFWProfile.fromJson(
              json['nsfw_profile'] as Map<String, dynamic>),
      meta: ItakuAuthUserMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItakuAuthUserToJson(ItakuAuthUser instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'nsfw_profile': instance.nsfwProfile,
      'meta': instance.meta,
    };

ItakuAuthUserLogin _$ItakuAuthUserLoginFromJson(Map<String, dynamic> json) =>
    ItakuAuthUserLogin(
      profile:
          ItakuUserProfile.fromJson(json['profile'] as Map<String, dynamic>),
      nsfwProfile: json['nsfw_profile'] == null
          ? null
          : ItakuNSFWProfile.fromJson(
              json['nsfw_profile'] as Map<String, dynamic>),
      meta: ItakuAuthUserMeta.fromJson(json['meta'] as Map<String, dynamic>),
      key: json['key'] as String,
      user: json['user'] as int,
    );

Map<String, dynamic> _$ItakuAuthUserLoginToJson(ItakuAuthUserLogin instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'nsfw_profile': instance.nsfwProfile,
      'meta': instance.meta,
      'key': instance.key,
      'user': instance.user,
    };

ItakuAuthUserMeta _$ItakuAuthUserMetaFromJson(Map<String, dynamic> json) =>
    ItakuAuthUserMeta(
      adMode: json['ad_mode'] as bool,
      blacklistedTags: (json['blacklisted_tags'] as List<dynamic>)
          .map((e) => ItakuTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      blacklistedUsers: (json['blacklisted_users'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      blockedUsers: (json['blocked_users'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      emailUpdates: json['email_updates'] as bool,
      hideNsfw: json['hide_nsfw'] as bool,
      hideNsfwPosts: json['hide_nsfw_posts'] as bool,
      hideNsfwTags: json['hide_nsfw_tags'] as bool,
      hideQuestionable: json['hide_questionable'] as bool,
      muteSubmissionNotifs: json['mute_submission_notifs'] as bool,
      revealNsfw: json['reveal_nsfw'] as bool,
      sfwFiltersByDefault: json['sfw_filters_by_default'] as bool,
      showAdsAsSupporter: json['show_ads_as_supporter'] as bool,
      showContentWarnings: json['show_content_warnings'] as bool,
      submissionNotifsMutedUsers:
          (json['submission_notifs_muted_users'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
    );

Map<String, dynamic> _$ItakuAuthUserMetaToJson(ItakuAuthUserMeta instance) =>
    <String, dynamic>{
      'ad_mode': instance.adMode,
      'blacklisted_tags': instance.blacklistedTags,
      'blacklisted_users': instance.blacklistedUsers,
      'blocked_users': instance.blockedUsers,
      'email_updates': instance.emailUpdates,
      'hide_nsfw': instance.hideNsfw,
      'hide_nsfw_posts': instance.hideNsfwPosts,
      'hide_nsfw_tags': instance.hideNsfwTags,
      'hide_questionable': instance.hideQuestionable,
      'mute_submission_notifs': instance.muteSubmissionNotifs,
      'reveal_nsfw': instance.revealNsfw,
      'sfw_filters_by_default': instance.sfwFiltersByDefault,
      'show_ads_as_supporter': instance.showAdsAsSupporter,
      'show_content_warnings': instance.showContentWarnings,
      'submission_notifs_muted_users': instance.submissionNotifsMutedUsers,
    };

ItakuAuthUserTagSet _$ItakuAuthUserTagSetFromJson(Map<String, dynamic> json) =>
    ItakuAuthUserTagSet(
      id: json['id'] as int,
      name: json['name'] as String,
      numTags: json['num_tags'] as int,
      tags: (json['tags'] as List<dynamic>)
          .map((e) => ItakuTag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ItakuAuthUserTagSetToJson(
        ItakuAuthUserTagSet instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'num_tags': instance.numTags,
      'tags': instance.tags,
    };

ItakuAuthUserBlacklistedBlockedUsers
    _$ItakuAuthUserBlacklistedBlockedUsersFromJson(Map<String, dynamic> json) =>
        ItakuAuthUserBlacklistedBlockedUsers(
          blacklistedUsers: (json['blacklisted_users'] as List<dynamic>)
              .map((e) => ItakuUserCompact.fromJson(e as Map<String, dynamic>))
              .toList(),
          blockedUsers: (json['blocked_users'] as List<dynamic>)
              .map((e) => ItakuUserCompact.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$ItakuAuthUserBlacklistedBlockedUsersToJson(
        ItakuAuthUserBlacklistedBlockedUsers instance) =>
    <String, dynamic>{
      'blacklisted_users': instance.blacklistedUsers,
      'blocked_users': instance.blockedUsers,
    };

ItakuAuthUserNotification _$ItakuAuthUserNotificationFromJson(
        Map<String, dynamic> json) =>
    ItakuAuthUserNotification(
      actionType: json['action_type'] as String,
      actor: json['actor'] as int,
      actorAvatar: json['actor_avatar'] as String,
      actorDisplayname: json['actor_displayname'] as String,
      actorUsername: json['actor_username'] as String,
      contentType: json['content_type'] as String,
      dateAdded: DateTime.parse(json['date_added'] as String),
      id: json['id'] as int,
      message: json['message'] as String,
      objectId: json['object_id'] as int,
      owner: json['owner'] as int,
      read: json['read'] as bool,
      resource: json['resource'] as String,
    );

Map<String, dynamic> _$ItakuAuthUserNotificationToJson(
        ItakuAuthUserNotification instance) =>
    <String, dynamic>{
      'action_type': instance.actionType,
      'actor': instance.actor,
      'actor_avatar': instance.actorAvatar,
      'actor_displayname': instance.actorDisplayname,
      'actor_username': instance.actorUsername,
      'content_type': instance.contentType,
      'date_added': instance.dateAdded.toIso8601String(),
      'id': instance.id,
      'message': instance.message,
      'object_id': instance.objectId,
      'owner': instance.owner,
      'read': instance.read,
      'resource': instance.resource,
    };

ItakuAuthException _$ItakuAuthExceptionFromJson(Map<String, dynamic> json) =>
    ItakuAuthException(
      username: (json['username'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      password: (json['password'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nonFieldErrors: (json['non_field_errors'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ItakuAuthExceptionToJson(ItakuAuthException instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'non_field_errors': instance.nonFieldErrors,
    };
