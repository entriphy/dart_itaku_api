// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItakuPost _$ItakuPostFromJson(Map<String, dynamic> json) => ItakuPost(
      alreadyPinned: json['already_pinned'] as bool?,
      canReshare: json['can_reshare'] as bool,
      content: json['content'] as String,
      contentWarning: json['content_warning'] as String,
      createdByImages: json['created_by_images'] as bool,
      dateAdded: DateTime.parse(json['date_added'] as String),
      dateEdited: json['date_edited'] == null
          ? null
          : DateTime.parse(json['date_edited'] as String),
      folders: (json['folders'] as List<dynamic>)
          .map((e) => ItakuPostFolder.fromJson(e as Map<String, dynamic>))
          .toList(),
      galleryImages: (json['gallery_images'] as List<dynamic>)
          .map((e) => ItakuImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int,
      likedByYou: json['liked_by_you'] as bool,
      maturityRating:
          $enumDecode(_$ItakuMaturityRatingEnumMap, json['maturity_rating']),
      numComments: json['num_comments'] as int,
      numLikes: json['num_likes'] as int,
      numReshares: json['num_reshares'] as int,
      numTooMatureImgs: json['num_too_mature_imgs'] as int,
      objTags: json['obj_tags'] as int,
      owner: json['owner'] as int,
      ownerAvatar: json['owner_avatar'] as String,
      ownerDisplayname: json['owner_displayname'] as String,
      ownerUsername: json['owner_username'] as String,
      resharedByYou: json['reshared_by_you'] as bool,
      showContentWarning: json['show_content_warning'],
      tags: (json['tags'] as List<dynamic>)
          .map((e) => ItakuTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String,
      tooMature: json['too_mature'] as bool,
      visibility: $enumDecode(_$ItakuVisibilityEnumMap, json['visibility']),
    );

Map<String, dynamic> _$ItakuPostToJson(ItakuPost instance) => <String, dynamic>{
      'already_pinned': instance.alreadyPinned,
      'can_reshare': instance.canReshare,
      'content': instance.content,
      'content_warning': instance.contentWarning,
      'created_by_images': instance.createdByImages,
      'date_added': instance.dateAdded.toIso8601String(),
      'date_edited': instance.dateEdited?.toIso8601String(),
      'folders': instance.folders,
      'gallery_images': instance.galleryImages,
      'id': instance.id,
      'liked_by_you': instance.likedByYou,
      'maturity_rating': _$ItakuMaturityRatingEnumMap[instance.maturityRating]!,
      'num_comments': instance.numComments,
      'num_likes': instance.numLikes,
      'num_reshares': instance.numReshares,
      'num_too_mature_imgs': instance.numTooMatureImgs,
      'obj_tags': instance.objTags,
      'owner': instance.owner,
      'owner_avatar': instance.ownerAvatar,
      'owner_displayname': instance.ownerDisplayname,
      'owner_username': instance.ownerUsername,
      'reshared_by_you': instance.resharedByYou,
      'show_content_warning': instance.showContentWarning,
      'tags': instance.tags,
      'title': instance.title,
      'too_mature': instance.tooMature,
      'visibility': _$ItakuVisibilityEnumMap[instance.visibility]!,
    };

const _$ItakuMaturityRatingEnumMap = {
  ItakuMaturityRating.sfw: 'SFW',
  ItakuMaturityRating.questionable: 'Questionable',
  ItakuMaturityRating.nsfw: 'NSFW',
  ItakuMaturityRating.any: 'ANY',
};

const _$ItakuVisibilityEnumMap = {
  ItakuVisibility.public: 'PUBLIC',
  ItakuVisibility.profileOnly: 'PROFILE_ONLY',
};

ItakuPostFolder _$ItakuPostFolderFromJson(Map<String, dynamic> json) =>
    ItakuPostFolder(
      id: json['id'] as int,
      numPosts: json['num_posts'] as int,
      title: json['title'] as String,
    );

Map<String, dynamic> _$ItakuPostFolderToJson(ItakuPostFolder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'num_posts': instance.numPosts,
      'title': instance.title,
    };
