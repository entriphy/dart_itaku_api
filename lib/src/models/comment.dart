import 'package:json_annotation/json_annotation.dart';

part 'comment.g.dart';

@JsonSerializable()
class ItakuComment {
  final List<ItakuComment> children;
  final String content;
  final DateTime dateAdded;
  final DateTime? dateEdited;
  final int id;
  final bool likedByYou;
  final int numChildren;
  final int numLikes;
  final int owner;
  final String ownerAvatar;
  final String ownerDisplayname;
  final String ownerUsername;
  final int? parent;
  final int? replyingTo;
  final String? replyingToDisplayname;

  ItakuComment({
    required this.children,
    required this.content,
    required this.dateAdded,
    this.dateEdited,
    required this.id,
    required this.likedByYou,
    required this.numChildren,
    required this.numLikes,
    required this.owner,
    required this.ownerAvatar,
    required this.ownerDisplayname,
    required this.ownerUsername,
    this.parent,
    this.replyingTo,
    this.replyingToDisplayname,
  });

  factory ItakuComment.fromJson(Map<String, dynamic> json) =>
      _$ItakuCommentFromJson(json);

  Map<String, dynamic> toJson() => _$ItakuCommentToJson(this);
}
