// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItakuTag _$ItakuTagFromJson(Map<String, dynamic> json) => ItakuTag(
      id: json['id'] as int,
      maturityRating:
          $enumDecode(_$ItakuMaturityRatingEnumMap, json['maturity_rating']),
      name: json['name'] as String,
      numObjects: json['num_objects'] as int,
      synonymousTo: json['synonymous_to'] == null
          ? null
          : ItakuTag.fromJson(json['synonymous_to'] as Map<String, dynamic>),
      tagType: $enumDecode(_$ItakuTagTypeEnumMap, json['tag_type']),
    );

Map<String, dynamic> _$ItakuTagToJson(ItakuTag instance) => <String, dynamic>{
      'id': instance.id,
      'maturity_rating': _$ItakuMaturityRatingEnumMap[instance.maturityRating]!,
      'name': instance.name,
      'num_objects': instance.numObjects,
      'synonymous_to': instance.synonymousTo,
      'tag_type': _$ItakuTagTypeEnumMap[instance.tagType]!,
    };

const _$ItakuMaturityRatingEnumMap = {
  ItakuMaturityRating.sfw: 'SFW',
  ItakuMaturityRating.questionable: 'Questionable',
  ItakuMaturityRating.nsfw: 'NSFW',
  ItakuMaturityRating.any: 'ANY',
};

const _$ItakuTagTypeEnumMap = {
  ItakuTagType.general: 'GENERAL',
  ItakuTagType.character: 'CHARACTER',
  ItakuTagType.species: 'SPECIES',
  ItakuTagType.copyright: 'COPYRIGHT',
  ItakuTagType.meta: 'META',
};
