import 'package:json_annotation/json_annotation.dart';

import 'content_object.dart';
import 'enums.dart';

part 'reshare.g.dart';

@JsonSerializable()
class ItakuReshare extends ItakuContentObject {
  @ItakuContentObjectConverter()
  final ItakuContentObject contentObject;
  final ItakuContentType contentType;
  final DateTime dateAdded;
  final String ownerDisplayname;
  final String ownerUsername;
  final ItakuVerb verb;

  ItakuReshare({
    required this.contentObject,
    required this.contentType,
    required this.dateAdded,
    required this.ownerDisplayname,
    required this.ownerUsername,
    required this.verb,
  });

  factory ItakuReshare.fromJson(Map<String, dynamic> json) =>
      _$ItakuReshareFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ItakuReshareToJson(this);
}
