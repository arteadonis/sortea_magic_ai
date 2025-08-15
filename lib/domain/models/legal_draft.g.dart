// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legal_draft.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LegalDraft _$LegalDraftFromJson(Map<String, dynamic> json) => _LegalDraft(
  title: json['title'] as String,
  body: json['body'] as String,
  metadata:
      (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ) ??
      const {},
);

Map<String, dynamic> _$LegalDraftToJson(_LegalDraft instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'metadata': instance.metadata,
    };
