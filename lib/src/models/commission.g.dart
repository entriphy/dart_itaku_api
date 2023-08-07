// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItakuCommission _$ItakuCommissionFromJson(Map<String, dynamic> json) =>
    ItakuCommission(
      alreadyPinned: json['already_pinned'] as bool?,
      canReshare: json['can_reshare'] as bool,
      commType: $enumDecode(_$ItakuCommissionTypeEnumMap, json['comm_type']),
      currency: json['currency'] as String,
      dateAdded: DateTime.parse(json['date_added'] as String),
      dateComplete: json['date_complete'] == null
          ? null
          : DateTime.parse(json['date_complete'] as String),
      dateEdited: json['date_edited'] == null
          ? null
          : DateTime.parse(json['date_edited'] as String),
      description: json['description'] as String,
      highestBid: json['highest_bid'] as int?,
      id: json['id'] as int,
      isAuction: json['is_auction'] as bool,
      likedByYou: json['liked_by_you'] as bool,
      maturityRating:
          $enumDecode(_$ItakuMaturityRatingEnumMap, json['maturity_rating']),
      maxPrice: json['max_price'] as String,
      minPrice: json['min_price'] as String,
      numComments: json['num_comments'] as int,
      numLikes: json['num_likes'] as int,
      numReshares: json['num_reshares'] as int,
      numSlots: json['num_slots'] as int,
      numSlotted: json['num_slotted'] as int,
      objTags: json['obj_tags'] as int,
      owner: json['owner'] as int,
      ownerAvatar: json['owner_avatar'] as String,
      ownerDisplayname: json['owner_displayname'] as String,
      ownerUsername: json['owner_username'] as String,
      referenceGalleryImages:
          (json['reference_gallery_images'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
      resharedByYou: json['reshared_by_you'] as bool,
      status: json['status'] as String,
      thumbnail: json['thumbnail'] as int,
      thumbnailDetail: json['thumbnail_detail'],
      timeData: json['time_data'],
      title: json['title'] as String,
      tooMature: json['too_mature'] as bool,
    );

Map<String, dynamic> _$ItakuCommissionToJson(ItakuCommission instance) =>
    <String, dynamic>{
      'already_pinned': instance.alreadyPinned,
      'can_reshare': instance.canReshare,
      'comm_type': _$ItakuCommissionTypeEnumMap[instance.commType]!,
      'currency': instance.currency,
      'date_added': instance.dateAdded.toIso8601String(),
      'date_complete': instance.dateComplete?.toIso8601String(),
      'date_edited': instance.dateEdited?.toIso8601String(),
      'description': instance.description,
      'highest_bid': instance.highestBid,
      'id': instance.id,
      'is_auction': instance.isAuction,
      'liked_by_you': instance.likedByYou,
      'maturity_rating': _$ItakuMaturityRatingEnumMap[instance.maturityRating]!,
      'max_price': instance.maxPrice,
      'min_price': instance.minPrice,
      'num_comments': instance.numComments,
      'num_likes': instance.numLikes,
      'num_reshares': instance.numReshares,
      'num_slots': instance.numSlots,
      'num_slotted': instance.numSlotted,
      'obj_tags': instance.objTags,
      'owner': instance.owner,
      'owner_avatar': instance.ownerAvatar,
      'owner_displayname': instance.ownerDisplayname,
      'owner_username': instance.ownerUsername,
      'reference_gallery_images': instance.referenceGalleryImages,
      'reshared_by_you': instance.resharedByYou,
      'status': instance.status,
      'thumbnail': instance.thumbnail,
      'thumbnail_detail': instance.thumbnailDetail,
      'time_data': instance.timeData,
      'title': instance.title,
      'too_mature': instance.tooMature,
    };

const _$ItakuCommissionTypeEnumMap = {
  ItakuCommissionType.request: 'REQUEST',
  ItakuCommissionType.offer: 'OFFER',
  ItakuCommissionType.adopt: 'ADOPT',
  ItakuCommissionType.ych: 'YCH',
};

const _$ItakuMaturityRatingEnumMap = {
  ItakuMaturityRating.sfw: 'SFW',
  ItakuMaturityRating.questionable: 'Questionable',
  ItakuMaturityRating.nsfw: 'NSFW',
  ItakuMaturityRating.any: 'ANY',
};
