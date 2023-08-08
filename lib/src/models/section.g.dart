// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItakuSection _$ItakuSectionFromJson(Map<String, dynamic> json) => ItakuSection(
      group: json['group'] == null
          ? null
          : ItakuSectionGroup.fromJson(json['group'] as Map<String, dynamic>),
      id: json['id'] as int,
      numImages: json['num_images'] as int,
      title: json['title'] as String,
    );

Map<String, dynamic> _$ItakuSectionToJson(ItakuSection instance) =>
    <String, dynamic>{
      'group': instance.group,
      'id': instance.id,
      'num_images': instance.numImages,
      'title': instance.title,
    };

ItakuSectionGroup _$ItakuSectionGroupFromJson(Map<String, dynamic> json) =>
    ItakuSectionGroup(
      id: json['id'] as int,
      owner: json['owner'] as int,
      title: json['title'] as String,
    );

Map<String, dynamic> _$ItakuSectionGroupToJson(ItakuSectionGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner,
      'title': instance.title,
    };
