import 'package:json_annotation/json_annotation.dart';

import 'enums.dart';

part 'tag.g.dart';

@JsonSerializable()
class ItakuTagCompact {
  final int id;
  final String name;

  ItakuTagCompact({
    required this.id,
    required this.name,
  });

  factory ItakuTagCompact.fromJson(Map<String, dynamic> json) =>
      _$ItakuTagCompactFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuTagCompactToJson(this);
}

@JsonSerializable()
class ItakuTag extends ItakuTagCompact {
  final ItakuMaturityRating maturityRating;
  final int numObjects;
  final ItakuTag? synonymousTo;
  final ItakuTagType tagType;

  ItakuTag({
    required super.id,
    required super.name,
    required this.maturityRating,
    required this.numObjects,
    this.synonymousTo,
    required this.tagType,
  });

  factory ItakuTag.fromJson(Map<String, dynamic> json) =>
      _$ItakuTagFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ItakuTagToJson(this);
}

@JsonSerializable()
class ItakuTagFull extends ItakuTag {
  final bool allowedToEdit;
  final bool blacklisted;
  final List<ItakuTag> children;
  final DateTime dateAdded;
  final DateTime? dateEdited;
  final String description;
  final List<ItakuTagEditor> editors;
  final bool hasEdits;
  final bool hasSynonyms;
  final int? owner;
  final String? ownerDisplayname;
  final String? ownerUsername;
  final List<ItakuTag> parents;
  final List<ItakuTag> synonymous;
  final List<ItakuTag> synonyms;

  ItakuTagFull({
    // Super
    required super.id,
    required super.maturityRating,
    required super.name,
    required super.numObjects,
    super.synonymousTo,
    required super.tagType,
    // This
    required this.allowedToEdit,
    required this.blacklisted,
    required this.children,
    required this.dateAdded,
    this.dateEdited,
    required this.description,
    required this.editors,
    required this.hasEdits,
    required this.hasSynonyms,
    required this.owner,
    required this.ownerDisplayname,
    required this.ownerUsername,
    required this.parents,
    required this.synonymous,
    required this.synonyms,
  });

  factory ItakuTagFull.fromJson(Map<String, dynamic> json) =>
      _$ItakuTagFullFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ItakuTagFullToJson(this);
}

@JsonSerializable()
class ItakuTagEditor {
  final String username;
  final String displayname;

  ItakuTagEditor({
    required this.username,
    required this.displayname,
  });

  factory ItakuTagEditor.fromJson(Map<String, dynamic> json) =>
      _$ItakuTagEditorFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuTagEditorToJson(this);
}
