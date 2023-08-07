import 'package:json_annotation/json_annotation.dart';

import 'enums.dart';
import 'content_object.dart';

part 'image.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ItakuImage extends ItakuContentObject {
  final bool? alreadyPinned;
  final bool animated;
  final ItakuImageBlacklist blacklisted;
  final bool bookmarkedByYou;
  final String? contentWarning;
  final int id;
  final String imageLg;
  final String? imageSm;
  final String imageXl;
  final bool isThumbnailForVideo;
  final bool likedByYou;
  final ItakuMaturityRating maturityRating;
  final int numComments;
  final int numLikes;
  final int numReshares;
  final int owner;
  final dynamic showContentWarning; // Either String or bool... wtf?
  final String title;
  final bool tooMature;

  ItakuImage({
    this.alreadyPinned,
    required this.animated,
    required this.blacklisted,
    required this.bookmarkedByYou,
    required this.contentWarning,
    required this.id,
    required this.imageLg,
    required this.imageSm,
    required this.imageXl,
    required this.isThumbnailForVideo,
    required this.likedByYou,
    required this.maturityRating,
    required this.numComments,
    required this.numLikes,
    required this.numReshares,
    required this.owner,
    this.showContentWarning,
    required this.title,
    required this.tooMature,
  });

  factory ItakuImage.fromJson(Map<String, dynamic> json) =>
      _$ItakuImageFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuImageToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ItakuImageBlacklist {
  final bool isBlacklisted;
  final List<int> blacklistedTags; // TODO

  ItakuImageBlacklist({
    required this.isBlacklisted,
    required this.blacklistedTags,
  });

  factory ItakuImageBlacklist.fromJson(Map<String, dynamic> json) =>
      _$ItakuImageBlacklistFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuImageBlacklistToJson(this);
}
