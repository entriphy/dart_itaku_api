import 'package:json_annotation/json_annotation.dart';

import 'enums.dart';
import 'content_object.dart';

part 'commission.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
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
  final bool likedByYou;
  final ItakuMaturityRating maturityRating;
  final String maxPrice;
  final String minPrice;
  final int numComments;
  final int numLikes;
  final int numReshares;
  final int numSlots;
  final int numSlotted;
  final int objTags;
  final int owner;
  final String ownerAvatar;
  final String ownerDisplayname;
  final String ownerUsername;
  final List<int> referenceGalleryImages;
  final bool resharedByYou;
  final String status;
  final int thumbnail;
  final dynamic thumbnailDetail; // TODO
  final dynamic timeData; // TODO
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

  Map<String, dynamic> toJson() => _$ItakuCommissionToJson(this);
}
