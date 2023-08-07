// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItakuFeedItem _$ItakuFeedItemFromJson(Map<String, dynamic> json) =>
    ItakuFeedItem(
      alreadyPinned: json['already_pinned'] as bool?,
      contentObject: const ItakuContentObjectConverter()
          .fromJson(json['content_object'] as Map<String, dynamic>),
      contentType: $enumDecode(_$ItakuContentTypeEnumMap, json['content_type'],
          unknownValue: ItakuContentType.other),
      dateAdded: DateTime.parse(json['date_added'] as String),
      dateEdited: json['date_edited'] == null
          ? null
          : DateTime.parse(json['date_edited'] as String),
      hidden: json['hidden'] as bool,
      hotnessScore: (json['hotness_score'] as num).toDouble(),
      id: json['id'] as int,
      maturityRating:
          $enumDecode(_$ItakuMaturityRatingEnumMap, json['maturity_rating']),
      objTags: json['obj_tags'] as int,
      owner: json['owner'] as int,
      ownerAvatar: json['owner_avatar'] as String,
      ownerDisplayname: json['owner_displayname'] as String,
      ownerUsername: json['owner_username'] as String,
      verb: $enumDecode(_$ItakuVerbEnumMap, json['verb']),
      visibility: $enumDecode(_$ItakuVisibilityEnumMap, json['visibility']),
    );

Map<String, dynamic> _$ItakuFeedItemToJson(ItakuFeedItem instance) =>
    <String, dynamic>{
      'already_pinned': instance.alreadyPinned,
      'content_object':
          const ItakuContentObjectConverter().toJson(instance.contentObject),
      'content_type': _$ItakuContentTypeEnumMap[instance.contentType]!,
      'date_added': instance.dateAdded.toIso8601String(),
      'date_edited': instance.dateEdited?.toIso8601String(),
      'hidden': instance.hidden,
      'hotness_score': instance.hotnessScore,
      'id': instance.id,
      'maturity_rating': _$ItakuMaturityRatingEnumMap[instance.maturityRating]!,
      'obj_tags': instance.objTags,
      'owner': instance.owner,
      'owner_avatar': instance.ownerAvatar,
      'owner_displayname': instance.ownerDisplayname,
      'owner_username': instance.ownerUsername,
      'verb': _$ItakuVerbEnumMap[instance.verb]!,
      'visibility': _$ItakuVisibilityEnumMap[instance.visibility]!,
    };

const _$ItakuContentTypeEnumMap = {
  ItakuContentType.galleryImage: 'galleryimage',
  ItakuContentType.post: 'post',
  ItakuContentType.reshare: 'reshare',
  ItakuContentType.commission: 'commission',
  ItakuContentType.other: 'undefined',
};

const _$ItakuMaturityRatingEnumMap = {
  ItakuMaturityRating.sfw: 'SFW',
  ItakuMaturityRating.questionable: 'Questionable',
  ItakuMaturityRating.nsfw: 'NSFW',
  ItakuMaturityRating.any: 'ANY',
};

const _$ItakuVerbEnumMap = {
  ItakuVerb.added: 'added',
  ItakuVerb.reshared: 'reshared',
};

const _$ItakuVisibilityEnumMap = {
  ItakuVisibility.public: 'PUBLIC',
  ItakuVisibility.profileOnly: 'PROFILE_ONLY',
};
