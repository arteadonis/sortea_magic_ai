// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draw_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DrawResult _$DrawResultFromJson(Map<String, dynamic> json) => _DrawResult(
  winners: (json['winners'] as List<dynamic>)
      .map((e) => Comment.fromJson(e as Map<String, dynamic>))
      .toList(),
  alternates: (json['alternates'] as List<dynamic>)
      .map((e) => Comment.fromJson(e as Map<String, dynamic>))
      .toList(),
  inputHash: json['inputHash'] as String,
  configSnapshot: DrawConfig.fromJson(
    json['configSnapshot'] as Map<String, dynamic>,
  ),
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$DrawResultToJson(_DrawResult instance) =>
    <String, dynamic>{
      'winners': instance.winners,
      'alternates': instance.alternates,
      'inputHash': instance.inputHash,
      'configSnapshot': instance.configSnapshot,
      'createdAt': instance.createdAt.toIso8601String(),
    };
