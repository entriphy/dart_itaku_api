// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reshare.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItakuReshare _$ItakuReshareFromJson(Map<String, dynamic> json) => ItakuReshare(
      contentObject: const ItakuContentObjectConverter()
          .fromJson(json['content_object'] as Map<String, dynamic>),
      contentType: $enumDecode(_$ItakuContentTypeEnumMap, json['content_type']),
      dateAdded: DateTime.parse(json['date_added'] as String),
      ownerDisplayname: json['owner_displayname'] as String,
      ownerUsername: json['owner_username'] as String,
      verb: $enumDecode(_$ItakuVerbEnumMap, json['verb']),
    );

Map<String, dynamic> _$ItakuReshareToJson(ItakuReshare instance) =>
    <String, dynamic>{
      'content_object':
          const ItakuContentObjectConverter().toJson(instance.contentObject),
      'content_type': _$ItakuContentTypeEnumMap[instance.contentType]!,
      'date_added': instance.dateAdded.toIso8601String(),
      'owner_displayname': instance.ownerDisplayname,
      'owner_username': instance.ownerUsername,
      'verb': _$ItakuVerbEnumMap[instance.verb]!,
    };

const _$ItakuContentTypeEnumMap = {
  ItakuContentType.galleryImage: 'galleryimage',
  ItakuContentType.post: 'post',
  ItakuContentType.reshare: 'reshare',
  ItakuContentType.commission: 'commission',
  ItakuContentType.other: 'undefined',
};

const _$ItakuVerbEnumMap = {
  ItakuVerb.added: 'added',
  ItakuVerb.reshared: 'reshared',
};
