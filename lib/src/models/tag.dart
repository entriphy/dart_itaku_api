import 'package:json_annotation/json_annotation.dart';

import 'enums.dart';

part 'tag.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ItakuTag {
  final int id;
  final ItakuMaturityRating maturityRating;
  final String name;
  final int numObjects;
  final ItakuTag? synonymousTo;
  final ItakuTagType tagType;

  ItakuTag({
    required this.id,
    required this.maturityRating,
    required this.name,
    required this.numObjects,
    this.synonymousTo,
    required this.tagType,
  });

  factory ItakuTag.fromJson(Map<String, dynamic> json) =>
      _$ItakuTagFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuTagToJson(this);
}
