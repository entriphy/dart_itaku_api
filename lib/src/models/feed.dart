import 'package:json_annotation/json_annotation.dart';

import 'enums.dart';

part 'feed.g.dart';

abstract class Serializable {
  Map<String, dynamic> toJson();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ItakuFeed extends Serializable {
  final bool? alreadyPinned; // TODO: What is this?
  final dynamic contentObject; // TODO: Do this
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

  ItakuFeed({
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

  factory ItakuFeed.fromJson(Map<String, dynamic> json) =>
      _$ItakuFeedFromJson(json);

  static fromJSON(Map<String, dynamic> json) => ItakuFeed.fromJSON(json);

  Map<String, dynamic> toJson() => _$ItakuFeedToJson(this);
}
