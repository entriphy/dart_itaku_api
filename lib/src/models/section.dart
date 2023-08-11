import 'package:json_annotation/json_annotation.dart';

part 'section.g.dart';

@JsonSerializable()
class ItakuSection {
  final ItakuSectionGroup? group;
  final int id;
  final int numImages;
  final String title;

  ItakuSection({
    this.group,
    required this.id,
    required this.numImages,
    required this.title,
  });

  factory ItakuSection.fromJson(Map<String, dynamic> json) =>
      _$ItakuSectionFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuSectionToJson(this);
}

@JsonSerializable()
class ItakuSectionGroup {
  final int id;
  final int owner;
  final String title;

  ItakuSectionGroup({
    required this.id,
    required this.owner,
    required this.title,
  });

  factory ItakuSectionGroup.fromJson(Map<String, dynamic> json) =>
      _$ItakuSectionGroupFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuSectionGroupToJson(this);
}
