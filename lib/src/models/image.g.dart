// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItakuImage _$ItakuImageFromJson(Map<String, dynamic> json) => ItakuImage(
      alreadyPinned: json['already_pinned'] as bool?,
      animated: json['animated'] as bool,
      blacklisted: ItakuImageBlacklist.fromJson(
          json['blacklisted'] as Map<String, dynamic>),
      bookmarkedByYou: json['bookmarked_by_you'] as bool,
      contentWarning: json['content_warning'] as String?,
      id: json['id'] as int,
      imageLg: json['image_lg'] as String?,
      imageSm: json['image_sm'] as String?,
      imageXl: json['image_xl'] as String?,
      isThumbnailForVideo: json['is_thumbnail_for_video'] as bool?,
      likedByYou: json['liked_by_you'] as bool,
      maturityRating:
          $enumDecode(_$ItakuMaturityRatingEnumMap, json['maturity_rating']),
      numComments: json['num_comments'] as int,
      numLikes: json['num_likes'] as int,
      numReshares: json['num_reshares'] as int,
      owner: json['owner'] as int,
      showContentWarning: json['show_content_warning'],
      title: json['title'] as String,
      tooMature: json['too_mature'] as bool,
    );

Map<String, dynamic> _$ItakuImageToJson(ItakuImage instance) =>
    <String, dynamic>{
      'already_pinned': instance.alreadyPinned,
      'animated': instance.animated,
      'blacklisted': instance.blacklisted,
      'bookmarked_by_you': instance.bookmarkedByYou,
      'content_warning': instance.contentWarning,
      'id': instance.id,
      'image_lg': instance.imageLg,
      'image_sm': instance.imageSm,
      'image_xl': instance.imageXl,
      'is_thumbnail_for_video': instance.isThumbnailForVideo,
      'liked_by_you': instance.likedByYou,
      'maturity_rating': _$ItakuMaturityRatingEnumMap[instance.maturityRating]!,
      'num_comments': instance.numComments,
      'num_likes': instance.numLikes,
      'num_reshares': instance.numReshares,
      'owner': instance.owner,
      'show_content_warning': instance.showContentWarning,
      'title': instance.title,
      'too_mature': instance.tooMature,
    };

const _$ItakuMaturityRatingEnumMap = {
  ItakuMaturityRating.sfw: 'SFW',
  ItakuMaturityRating.questionable: 'Questionable',
  ItakuMaturityRating.nsfw: 'NSFW',
  ItakuMaturityRating.any: 'ANY',
};

ItakuImageFull _$ItakuImageFullFromJson(Map<String, dynamic> json) =>
    ItakuImageFull(
      alreadyPinned: json['already_pinned'] as bool?,
      animated: json['animated'] as bool,
      blacklisted: ItakuImageBlacklist.fromJson(
          json['blacklisted'] as Map<String, dynamic>),
      bookmarkedByYou: json['bookmarked_by_you'] as bool,
      contentWarning: json['content_warning'] as String?,
      id: json['id'] as int,
      imageLg: json['image_lg'] as String?,
      imageSm: json['image_sm'] as String?,
      imageXl: json['image_xl'] as String?,
      isThumbnailForVideo: json['is_thumbnail_for_video'] as bool?,
      likedByYou: json['liked_by_you'] as bool,
      maturityRating:
          $enumDecode(_$ItakuMaturityRatingEnumMap, json['maturity_rating']),
      numComments: json['num_comments'] as int,
      numLikes: json['num_likes'] as int,
      numReshares: json['num_reshares'] as int,
      owner: json['owner'] as int,
      showContentWarning: json['show_content_warning'],
      title: json['title'] as String,
      tooMature: json['too_mature'] as bool,
      categorizedTags: (json['categorized_tags'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            $enumDecode(_$ItakuTagTypeEnumMap, k),
            (e as List<dynamic>)
                .map((e) => ItakuTag.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
      dateAdded: DateTime.parse(json['date_added'] as String),
      dateEdited: json['date_edited'] == null
          ? null
          : DateTime.parse(json['date_edited'] as String),
      description: json['description'] as String,
      hotnessScore: (json['hotness_score'] as num).toDouble(),
      objTags: json['obj_tags'] as int,
      ownerAvatar: json['owner_avatar'] as String,
      ownerUsername: json['owner_username'] as String,
      resharedByYou: json['reshared_by_you'] as bool,
      sections: (json['sections'] as List<dynamic>)
          .map((e) => ItakuSection.fromJson(e as Map<String, dynamic>))
          .toList(),
      sourceImageChanged: json['source_image_changed'] as bool,
      tags: (json['tags'] as List<dynamic>)
          .map((e) => ItakuTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      uncompressedFilesize: json['uncompressed_filesize'] as String,
      visibility: $enumDecode(_$ItakuVisibilityEnumMap, json['visibility']),
    );

Map<String, dynamic> _$ItakuImageFullToJson(ItakuImageFull instance) =>
    <String, dynamic>{
      'already_pinned': instance.alreadyPinned,
      'animated': instance.animated,
      'blacklisted': instance.blacklisted,
      'bookmarked_by_you': instance.bookmarkedByYou,
      'content_warning': instance.contentWarning,
      'id': instance.id,
      'image_lg': instance.imageLg,
      'image_sm': instance.imageSm,
      'image_xl': instance.imageXl,
      'is_thumbnail_for_video': instance.isThumbnailForVideo,
      'liked_by_you': instance.likedByYou,
      'maturity_rating': _$ItakuMaturityRatingEnumMap[instance.maturityRating]!,
      'num_comments': instance.numComments,
      'num_likes': instance.numLikes,
      'num_reshares': instance.numReshares,
      'owner': instance.owner,
      'show_content_warning': instance.showContentWarning,
      'title': instance.title,
      'too_mature': instance.tooMature,
      'categorized_tags': instance.categorizedTags
          .map((k, e) => MapEntry(_$ItakuTagTypeEnumMap[k]!, e)),
      'date_added': instance.dateAdded.toIso8601String(),
      'date_edited': instance.dateEdited?.toIso8601String(),
      'description': instance.description,
      'hotness_score': instance.hotnessScore,
      'obj_tags': instance.objTags,
      'owner_avatar': instance.ownerAvatar,
      'owner_username': instance.ownerUsername,
      'reshared_by_you': instance.resharedByYou,
      'sections': instance.sections,
      'source_image_changed': instance.sourceImageChanged,
      'tags': instance.tags,
      'uncompressed_filesize': instance.uncompressedFilesize,
      'visibility': _$ItakuVisibilityEnumMap[instance.visibility]!,
    };

const _$ItakuTagTypeEnumMap = {
  ItakuTagType.general: 'GENERAL',
  ItakuTagType.artist: 'ARTIST',
  ItakuTagType.character: 'CHARACTER',
  ItakuTagType.species: 'SPECIES',
  ItakuTagType.copyright: 'COPYRIGHT',
  ItakuTagType.meta: 'META',
};

const _$ItakuVisibilityEnumMap = {
  ItakuVisibility.public: 'PUBLIC',
  ItakuVisibility.profileOnly: 'PROFILE_ONLY',
};

ItakuImageBlacklist _$ItakuImageBlacklistFromJson(Map<String, dynamic> json) =>
    ItakuImageBlacklist(
      isBlacklisted: json['is_blacklisted'] as bool,
      blacklistedTags: json['blacklisted_tags'] as List<dynamic>,
    );

Map<String, dynamic> _$ItakuImageBlacklistToJson(
        ItakuImageBlacklist instance) =>
    <String, dynamic>{
      'is_blacklisted': instance.isBlacklisted,
      'blacklisted_tags': instance.blacklistedTags,
    };

ItakuImageVideo _$ItakuImageVideoFromJson(Map<String, dynamic> json) =>
    ItakuImageVideo(
      dateAdded: DateTime.parse(json['date_added'] as String),
      filesize: json['filesize'] as String,
      id: json['id'] as int,
      owner: json['owner'] as int,
      thumbnail: json['thumbnail'] as int,
      video: json['video'] as String,
    );

Map<String, dynamic> _$ItakuImageVideoToJson(ItakuImageVideo instance) =>
    <String, dynamic>{
      'date_added': instance.dateAdded.toIso8601String(),
      'filesize': instance.filesize,
      'id': instance.id,
      'owner': instance.owner,
      'thumbnail': instance.thumbnail,
      'video': instance.video,
    };
