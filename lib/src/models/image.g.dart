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
      imageLg: json['image_lg'] as String,
      imageSm: json['image_sm'] as String?,
      imageXl: json['image_xl'] as String,
      isThumbnailForVideo: json['is_thumbnail_for_video'] as bool,
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

ItakuImageBlacklist _$ItakuImageBlacklistFromJson(Map<String, dynamic> json) =>
    ItakuImageBlacklist(
      isBlacklisted: json['is_blacklisted'] as bool,
      blacklistedTags: (json['blacklisted_tags'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$ItakuImageBlacklistToJson(
        ItakuImageBlacklist instance) =>
    <String, dynamic>{
      'is_blacklisted': instance.isBlacklisted,
      'blacklisted_tags': instance.blacklistedTags,
    };
