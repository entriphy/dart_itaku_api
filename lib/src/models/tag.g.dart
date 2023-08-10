// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItakuTagCompact _$ItakuTagCompactFromJson(Map<String, dynamic> json) =>
    ItakuTagCompact(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$ItakuTagCompactToJson(ItakuTagCompact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

ItakuTag _$ItakuTagFromJson(Map<String, dynamic> json) => ItakuTag(
      id: json['id'] as int,
      name: json['name'] as String,
      maturityRating:
          $enumDecode(_$ItakuMaturityRatingEnumMap, json['maturity_rating']),
      numObjects: json['num_objects'] as int,
      synonymousTo: json['synonymous_to'] == null
          ? null
          : ItakuTag.fromJson(json['synonymous_to'] as Map<String, dynamic>),
      tagType: $enumDecode(_$ItakuTagTypeEnumMap, json['tag_type']),
    );

Map<String, dynamic> _$ItakuTagToJson(ItakuTag instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'maturity_rating': _$ItakuMaturityRatingEnumMap[instance.maturityRating]!,
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
  ItakuTagType.artist: 'ARTIST',
  ItakuTagType.character: 'CHARACTER',
  ItakuTagType.species: 'SPECIES',
  ItakuTagType.copyright: 'COPYRIGHT',
  ItakuTagType.meta: 'META',
};

ItakuTagFull _$ItakuTagFullFromJson(Map<String, dynamic> json) => ItakuTagFull(
      id: json['id'] as int,
      maturityRating:
          $enumDecode(_$ItakuMaturityRatingEnumMap, json['maturity_rating']),
      name: json['name'] as String,
      numObjects: json['num_objects'] as int,
      synonymousTo: json['synonymous_to'] == null
          ? null
          : ItakuTag.fromJson(json['synonymous_to'] as Map<String, dynamic>),
      tagType: $enumDecode(_$ItakuTagTypeEnumMap, json['tag_type']),
      allowedToEdit: json['allowed_to_edit'] as bool,
      blacklisted: json['blacklisted'] as bool,
      children: (json['children'] as List<dynamic>)
          .map((e) => ItakuTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateAdded: DateTime.parse(json['date_added'] as String),
      dateEdited: json['date_edited'] == null
          ? null
          : DateTime.parse(json['date_edited'] as String),
      description: json['description'] as String,
      editors: (json['editors'] as List<dynamic>)
          .map((e) => ItakuTagEditor.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasEdits: json['has_edits'] as bool,
      hasSynonyms: json['has_synonyms'] as bool,
      owner: json['owner'] as int?,
      ownerDisplayname: json['owner_displayname'] as String?,
      ownerUsername: json['owner_username'] as String?,
      parents: (json['parents'] as List<dynamic>)
          .map((e) => ItakuTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      synonymous: (json['synonymous'] as List<dynamic>)
          .map((e) => ItakuTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      synonyms: (json['synonyms'] as List<dynamic>)
          .map((e) => ItakuTag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ItakuTagFullToJson(ItakuTagFull instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'maturity_rating': _$ItakuMaturityRatingEnumMap[instance.maturityRating]!,
      'num_objects': instance.numObjects,
      'synonymous_to': instance.synonymousTo,
      'tag_type': _$ItakuTagTypeEnumMap[instance.tagType]!,
      'allowed_to_edit': instance.allowedToEdit,
      'blacklisted': instance.blacklisted,
      'children': instance.children,
      'date_added': instance.dateAdded.toIso8601String(),
      'date_edited': instance.dateEdited?.toIso8601String(),
      'description': instance.description,
      'editors': instance.editors,
      'has_edits': instance.hasEdits,
      'has_synonyms': instance.hasSynonyms,
      'owner': instance.owner,
      'owner_displayname': instance.ownerDisplayname,
      'owner_username': instance.ownerUsername,
      'parents': instance.parents,
      'synonymous': instance.synonymous,
      'synonyms': instance.synonyms,
    };

ItakuTagEditor _$ItakuTagEditorFromJson(Map<String, dynamic> json) =>
    ItakuTagEditor(
      username: json['username'] as String,
      displayname: json['displayname'] as String,
    );

Map<String, dynamic> _$ItakuTagEditorToJson(ItakuTagEditor instance) =>
    <String, dynamic>{
      'username': instance.username,
      'displayname': instance.displayname,
    };
