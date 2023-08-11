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
      numSlotted: json['num_slotted'] as int?,
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
      status: $enumDecode(_$ItakuCommissionStatusEnumMap, json['status']),
      thumbnail: json['thumbnail'] as int,
      thumbnailDetail:
          ItakuImage.fromJson(json['thumbnail_detail'] as Map<String, dynamic>),
      timeData: _$recordConvert(
        json['time_data'],
        ($jsonValue) => (
          completedPercentage:
              ($jsonValue['completedPercentage'] as num).toDouble(),
          timeRemaining: $jsonValue['timeRemaining'] as int,
        ),
      ),
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
      'status': _$ItakuCommissionStatusEnumMap[instance.status]!,
      'thumbnail': instance.thumbnail,
      'thumbnail_detail': instance.thumbnailDetail.toJson(),
      'time_data': {
        'completedPercentage': instance.timeData.completedPercentage,
        'timeRemaining': instance.timeData.timeRemaining,
      },
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

const _$ItakuCommissionStatusEnumMap = {
  ItakuCommissionStatus.request: 'ACTIVE',
  ItakuCommissionStatus.offer: 'DOING',
  ItakuCommissionStatus.inactive: 'INACTIVE',
};

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);

ItakuCommissionFull _$ItakuCommissionFullFromJson(Map<String, dynamic> json) =>
    ItakuCommissionFull(
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
      numSlotted: json['num_slotted'] as int?,
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
      status: $enumDecode(_$ItakuCommissionStatusEnumMap, json['status']),
      thumbnail: json['thumbnail'] as int,
      thumbnailDetail:
          ItakuImage.fromJson(json['thumbnail_detail'] as Map<String, dynamic>),
      timeData: _$recordConvert(
        json['time_data'],
        ($jsonValue) => (
          completedPercentage:
              ($jsonValue['completedPercentage'] as num).toDouble(),
          timeRemaining: $jsonValue['timeRemaining'] as int,
        ),
      ),
      title: json['title'] as String,
      tooMature: json['too_mature'] as bool,
      finishedWorkGalleryImages:
          (json['finished_work_gallery_images'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
      joinedByYou: json['joined_by_you'] as bool?,
      latestPendingJoinRequestId: json['latest_pending_join_request_id'],
      minBidIncrease: json['min_bid_increase'] as String,
      numPendingJoinReqs: json['num_pending_join_reqs'] as int?,
      referenceGallerySections:
          (json['reference_gallery_sections'] as List<dynamic>)
              .map((e) => ItakuSection.fromJson(e as Map<String, dynamic>))
              .toList(),
      tags: (json['tags'] as List<dynamic>)
          .map((e) => ItakuTag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ItakuCommissionFullToJson(
        ItakuCommissionFull instance) =>
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
      'status': _$ItakuCommissionStatusEnumMap[instance.status]!,
      'thumbnail': instance.thumbnail,
      'thumbnail_detail': instance.thumbnailDetail.toJson(),
      'time_data': {
        'completedPercentage': instance.timeData.completedPercentage,
        'timeRemaining': instance.timeData.timeRemaining,
      },
      'title': instance.title,
      'too_mature': instance.tooMature,
      'finished_work_gallery_images': instance.finishedWorkGalleryImages,
      'joined_by_you': instance.joinedByYou,
      'latest_pending_join_request_id': instance.latestPendingJoinRequestId,
      'min_bid_increase': instance.minBidIncrease,
      'num_pending_join_reqs': instance.numPendingJoinReqs,
      'reference_gallery_sections':
          instance.referenceGallerySections.map((e) => e.toJson()).toList(),
      'tags': instance.tags.map((e) => e.toJson()).toList(),
    };

ItakuCommissionTier _$ItakuCommissionTierFromJson(Map<String, dynamic> json) =>
    ItakuCommissionTier(
      currency: json['currency'] as String,
      dateAdded: DateTime.parse(json['date_added'] as String),
      dateEdited: json['date_edited'] == null
          ? null
          : DateTime.parse(json['date_edited'] as String),
      description: json['description'] as String,
      galleryImage:
          ItakuImage.fromJson(json['gallery_image'] as Map<String, dynamic>),
      gallerySection: json['gallery_section'] as int,
      id: json['id'] as int,
      maxPrice: json['max_price'] as String,
      minPrice: json['min_price'] as String,
      owner: json['owner'] as int,
      title: json['title'] as String,
    );

Map<String, dynamic> _$ItakuCommissionTierToJson(
        ItakuCommissionTier instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'date_added': instance.dateAdded.toIso8601String(),
      'date_edited': instance.dateEdited?.toIso8601String(),
      'description': instance.description,
      'gallery_image': instance.galleryImage.toJson(),
      'gallery_section': instance.gallerySection,
      'id': instance.id,
      'max_price': instance.maxPrice,
      'min_price': instance.minPrice,
      'owner': instance.owner,
      'title': instance.title,
    };
