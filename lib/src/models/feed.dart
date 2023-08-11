import 'package:json_annotation/json_annotation.dart';

import 'enums.dart';
import 'content_object.dart';

part 'feed.g.dart';

@JsonSerializable()
class ItakuFeedItem {
  final bool? alreadyPinned;
  @ItakuContentObjectConverter()
  final ItakuContentObject contentObject;
  @JsonKey(unknownEnumValue: ItakuContentType.other)
  final ItakuContentType contentType;
  final DateTime dateAdded;
  final DateTime? dateEdited;
  final bool hidden;
  final double hotnessScore;
  final int id;
  final ItakuMaturityRating maturityRating;
  final int objTags;
  final int owner;
  final String ownerAvatar;
  final String ownerDisplayname;
  final String ownerUsername;
  final ItakuVerb verb;
  final ItakuVisibility visibility;

  ItakuFeedItem({
    this.alreadyPinned,
    required this.contentObject,
    required this.contentType,
    required this.dateAdded,
    this.dateEdited,
    required this.hidden,
    required this.hotnessScore,
    required this.id,
    required this.maturityRating,
    required this.objTags,
    required this.owner,
    required this.ownerAvatar,
    required this.ownerDisplayname,
    required this.ownerUsername,
    required this.verb,
    required this.visibility,
  });

  factory ItakuFeedItem.fromJson(Map<String, dynamic> json) =>
      _$ItakuFeedItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuFeedItemToJson(this);
}
