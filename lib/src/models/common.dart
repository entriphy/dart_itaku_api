import 'package:json_annotation/json_annotation.dart';

part 'common.g.dart';

@JsonSerializable()
class ItakuLikeResponse {
  final bool likedByYou;

  ItakuLikeResponse({required this.likedByYou});

  factory ItakuLikeResponse.fromJson(Map<String, dynamic> json) =>
      _$ItakuLikeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuLikeResponseToJson(this);
}
