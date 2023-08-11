import 'package:json_annotation/json_annotation.dart';

import 'content_object.dart';
import 'enums.dart';
import 'image.dart';
import 'section.dart';
import 'tag.dart';

part 'commission.g.dart';

@JsonSerializable()
class ItakuCommission extends ItakuContentObject {
  final bool? alreadyPinned;
  final bool canReshare;
  final ItakuCommissionType commType;
  final String currency;
  final DateTime dateAdded;
  final DateTime? dateComplete;
  final DateTime? dateEdited;
  final String description;
  final int? highestBid;
  final int id;
  final bool isAuction;
  bool likedByYou;
  final ItakuMaturityRating maturityRating;
  final String maxPrice;
  final String minPrice;
  int numComments;
  int numLikes;
  int numReshares;
  final int numSlots;
  final int? numSlotted;
  final int objTags;
  final int owner;
  final String ownerAvatar;
  final String ownerDisplayname;
  final String ownerUsername;
  final List<int> referenceGalleryImages;
  bool resharedByYou;
  final ItakuCommissionStatus status;
  final int thumbnail;
  final ItakuImage thumbnailDetail;
  final ItakuCommissionTimeData timeData;
  final String title;
  final bool tooMature;

  ItakuCommission({
    this.alreadyPinned,
    required this.canReshare,
    required this.commType,
    required this.currency,
    required this.dateAdded,
    this.dateComplete,
    this.dateEdited,
    required this.description,
    required this.highestBid,
    required this.id,
    required this.isAuction,
    required this.likedByYou,
    required this.maturityRating,
    required this.maxPrice,
    required this.minPrice,
    required this.numComments,
    required this.numLikes,
    required this.numReshares,
    required this.numSlots,
    required this.numSlotted,
    required this.objTags,
    required this.owner,
    required this.ownerAvatar,
    required this.ownerDisplayname,
    required this.ownerUsername,
    required this.referenceGalleryImages,
    required this.resharedByYou,
    required this.status,
    required this.thumbnail,
    required this.thumbnailDetail,
    required this.timeData,
    required this.title,
    required this.tooMature,
  });

  factory ItakuCommission.fromJson(Map<String, dynamic> json) =>
      _$ItakuCommissionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ItakuCommissionToJson(this);
}

@JsonSerializable()
class ItakuCommissionFull extends ItakuCommission {
  final List<int> finishedWorkGalleryImages;
  final bool? joinedByYou;
  final dynamic latestPendingJoinRequestId; // TODO: type?
  final String minBidIncrease;
  final int? numPendingJoinReqs;
  final List<ItakuSection> referenceGallerySections;
  final List<ItakuTag> tags;

  ItakuCommissionFull({
    // Super
    super.alreadyPinned,
    required super.canReshare,
    required super.commType,
    required super.currency,
    required super.dateAdded,
    super.dateComplete,
    super.dateEdited,
    required super.description,
    required super.highestBid,
    required super.id,
    required super.isAuction,
    required super.likedByYou,
    required super.maturityRating,
    required super.maxPrice,
    required super.minPrice,
    required super.numComments,
    required super.numLikes,
    required super.numReshares,
    required super.numSlots,
    required super.numSlotted,
    required super.objTags,
    required super.owner,
    required super.ownerAvatar,
    required super.ownerDisplayname,
    required super.ownerUsername,
    required super.referenceGalleryImages,
    required super.resharedByYou,
    required super.status,
    required super.thumbnail,
    required super.thumbnailDetail,
    required super.timeData,
    required super.title,
    required super.tooMature,
    // This
    required this.finishedWorkGalleryImages,
    required this.joinedByYou,
    required this.latestPendingJoinRequestId,
    required this.minBidIncrease,
    this.numPendingJoinReqs,
    required this.referenceGallerySections,
    required this.tags,
  });

  factory ItakuCommissionFull.fromJson(Map<String, dynamic> json) =>
      _$ItakuCommissionFullFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ItakuCommissionFullToJson(this);
}

@JsonSerializable()
class ItakuCommissionTier {
  final String currency;
  final DateTime dateAdded;
  final DateTime? dateEdited;
  final String description;
  final ItakuImage galleryImage;
  final int gallerySection;
  final int id;
  final String maxPrice;
  final String minPrice;
  final int owner;
  final String title;

  ItakuCommissionTier({
    required this.currency,
    required this.dateAdded,
    this.dateEdited,
    required this.description,
    required this.galleryImage,
    required this.gallerySection,
    required this.id,
    required this.maxPrice,
    required this.minPrice,
    required this.owner,
    required this.title,
  });

  factory ItakuCommissionTier.fromJson(Map<String, dynamic> json) =>
      _$ItakuCommissionTierFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuCommissionTierToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ItakuCommissionTimeData {
  final int timeRemaining;
  final double completedPercentage;

  ItakuCommissionTimeData({
    required this.timeRemaining,
    required this.completedPercentage,
  });

  factory ItakuCommissionTimeData.fromJson(Map<String, dynamic> json) =>
      _$ItakuCommissionTimeDataFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuCommissionTimeDataToJson(this);
}
