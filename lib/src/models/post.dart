import 'package:json_annotation/json_annotation.dart';

import 'enums.dart';
import 'image.dart';
import 'tag.dart';

part 'post.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ItakuPost {
  final bool? alreadyPinned;
  final bool canReshare;
  final String content;
  final String contentWarning;
  final bool createdByImages;
  final DateTime dateAdded;
  final DateTime? dateEdited;
  final List<ItakuPostFolder> folders;
  final List<ItakuImage> galleryImages;
  final int id;
  final bool likedByYou;
  final ItakuMaturityRating maturityRating;
  final int numComments;
  final int numLikes;
  final int numReshares;
  final int numTooMatureImgs;
  final int objTags;
  final int owner;
  final String ownerAvatar;
  final String ownerDisplayname;
  final String ownerUsername;
  final bool resharedByYou;
  final dynamic showContentWarning;
  final List<ItakuTag> tags;
  final String title;
  final bool tooMature;
  final ItakuVisibility visibility;

  ItakuPost({
    this.alreadyPinned,
    required this.canReshare,
    required this.content,
    required this.contentWarning,
    required this.createdByImages,
    required this.dateAdded,
    this.dateEdited,
    required this.folders,
    required this.galleryImages,
    required this.id,
    required this.likedByYou,
    required this.maturityRating,
    required this.numComments,
    required this.numLikes,
    required this.numReshares,
    required this.numTooMatureImgs,
    required this.objTags,
    required this.owner,
    required this.ownerAvatar,
    required this.ownerDisplayname,
    required this.ownerUsername,
    required this.resharedByYou,
    required this.showContentWarning,
    required this.tags,
    required this.title,
    required this.tooMature,
    required this.visibility,
  });

  factory ItakuPost.fromJson(Map<String, dynamic> json) =>
      _$ItakuPostFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuPostToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ItakuPostFolder {
  final int id;
  final int numPosts;
  final String title;

  ItakuPostFolder({
    required this.id,
    required this.numPosts,
    required this.title,
  });

  factory ItakuPostFolder.fromJson(Map<String, dynamic> json) =>
      _$ItakuPostFolderFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuPostFolderToJson(this);
}
