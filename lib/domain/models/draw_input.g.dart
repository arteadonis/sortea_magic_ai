// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draw_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DrawInput _$DrawInputFromJson(Map<String, dynamic> json) => _DrawInput(
  sourceUrl: json['sourceUrl'] as String,
  comments: (json['comments'] as List<dynamic>)
      .map((e) => Comment.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DrawInputToJson(_DrawInput instance) =>
    <String, dynamic>{
      'sourceUrl': instance.sourceUrl,
      'comments': instance.comments,
    };
