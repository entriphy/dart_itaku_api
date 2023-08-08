import 'package:json_annotation/json_annotation.dart';

import 'package:itaku_api/src/models/tag.dart';

import 'content_object.dart';
import 'enums.dart';
import 'section.dart';

part 'image.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ItakuImage extends ItakuContentObject {
  final bool? alreadyPinned;
  final bool animated;
  final ItakuImageBlacklist blacklisted;
  final bool bookmarkedByYou;
  final String? contentWarning;
  final int id;
  final String? imageLg;
  final String? imageSm;
  final String? imageXl;
  final String? imageXs;
  final bool? isThumbnailForVideo;
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
    required this.imageXs,
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

  @override
  Map<String, dynamic> toJson() => _$ItakuImageToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ItakuImageFull extends ItakuImage {
  final Map<ItakuTagType, List<ItakuTag>> categorizedTags;
  final DateTime dateAdded;
  final DateTime? dateEdited;
  final String description;
  final double hotnessScore;
  final int objTags;
  final String ownerAvatar;
  final String ownerUsername;
  final bool resharedByYou;
  final List<ItakuSection> sections;
  final bool sourceImageChanged;
  final List<ItakuTag> tags;
  final String uncompressedFilesize;
  final ItakuVisibility visibility;

  ItakuImageFull({
    // Super
    super.alreadyPinned,
    required super.animated,
    required super.blacklisted,
    required super.bookmarkedByYou,
    required super.contentWarning,
    required super.id,
    required super.imageLg,
    required super.imageSm,
    required super.imageXl,
    required super.imageXs,
    required super.isThumbnailForVideo,
    required super.likedByYou,
    required super.maturityRating,
    required super.numComments,
    required super.numLikes,
    required super.numReshares,
    required super.owner,
    super.showContentWarning,
    required super.title,
    required super.tooMature,
    // This
    required this.categorizedTags,
    required this.dateAdded,
    this.dateEdited,
    required this.description,
    required this.hotnessScore,
    required this.objTags,
    required this.ownerAvatar,
    required this.ownerUsername,
    required this.resharedByYou,
    required this.sections,
    required this.sourceImageChanged,
    required this.tags,
    required this.uncompressedFilesize,
    required this.visibility,
  });

  factory ItakuImageFull.fromJson(Map<String, dynamic> json) =>
      _$ItakuImageFullFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ItakuImageFullToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ItakuImageBlacklist {
  final bool isBlacklisted;
  final List<ItakuTag> blacklistedTags;
  final List<String>? tags;

  ItakuImageBlacklist({
    required this.isBlacklisted,
    required this.blacklistedTags,
    this.tags,
  });

  factory ItakuImageBlacklist.fromJson(Map<String, dynamic> json) =>
      _$ItakuImageBlacklistFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuImageBlacklistToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ItakuImageVideo {
  final DateTime dateAdded;
  final String filesize;
  final int id;
  final int owner;
  final int thumbnail;
  final String video;

  ItakuImageVideo({
    required this.dateAdded,
    required this.filesize,
    required this.id,
    required this.owner,
    required this.thumbnail,
    required this.video,
  });

  factory ItakuImageVideo.fromJson(Map<String, dynamic> json) =>
      _$ItakuImageVideoFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuImageVideoToJson(this);
}
