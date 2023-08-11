// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItakuComment _$ItakuCommentFromJson(Map<String, dynamic> json) => ItakuComment(
      children: (json['children'] as List<dynamic>)
          .map((e) => ItakuComment.fromJson(e as Map<String, dynamic>))
          .toList(),
      content: json['content'] as String,
      dateAdded: DateTime.parse(json['date_added'] as String),
      dateEdited: json['date_edited'] == null
          ? null
          : DateTime.parse(json['date_edited'] as String),
      id: json['id'] as int,
      likedByYou: json['liked_by_you'] as bool,
      numChildren: json['num_children'] as int,
      numLikes: json['num_likes'] as int,
      owner: json['owner'] as int,
      ownerAvatar: json['owner_avatar'] as String,
      ownerDisplayname: json['owner_displayname'] as String,
      ownerUsername: json['owner_username'] as String,
      parent: json['parent'] as int?,
      replyingTo: json['replying_to'] as int?,
      replyingToDisplayname: json['replying_to_displayname'] as String?,
    );

Map<String, dynamic> _$ItakuCommentToJson(ItakuComment instance) =>
    <String, dynamic>{
      'children': instance.children.map((e) => e.toJson()).toList(),
      'content': instance.content,
      'date_added': instance.dateAdded.toIso8601String(),
      'date_edited': instance.dateEdited?.toIso8601String(),
      'id': instance.id,
      'liked_by_you': instance.likedByYou,
      'num_children': instance.numChildren,
      'num_likes': instance.numLikes,
      'owner': instance.owner,
      'owner_avatar': instance.ownerAvatar,
      'owner_displayname': instance.ownerDisplayname,
      'owner_username': instance.ownerUsername,
      'parent': instance.parent,
      'replying_to': instance.replyingTo,
      'replying_to_displayname': instance.replyingToDisplayname,
    };
