// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draw_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DrawConfig _$DrawConfigFromJson(Map<String, dynamic> json) => _DrawConfig(
  minMentions: (json['minMentions'] as num?)?.toInt() ?? 0,
  dedupeByUser: json['dedupeByUser'] as bool? ?? true,
  winnersCount: (json['winnersCount'] as num?)?.toInt() ?? 1,
  alternatesCount: (json['alternatesCount'] as num?)?.toInt() ?? 0,
  seed: json['seed'] as String?,
);

Map<String, dynamic> _$DrawConfigToJson(_DrawConfig instance) =>
    <String, dynamic>{
      'minMentions': instance.minMentions,
      'dedupeByUser': instance.dedupeByUser,
      'winnersCount': instance.winnersCount,
      'alternatesCount': instance.alternatesCount,
      'seed': instance.seed,
    };
