import 'package:freezed_annotation/freezed_annotation.dart';

part 'draw_config.freezed.dart';
part 'draw_config.g.dart';

/// Configuration for a draw.
@freezed
abstract class DrawConfig with _$DrawConfig {
  const factory DrawConfig({
    @Default(0) int minMentions,
    @Default(true) bool dedupeByUser,
    @Default(1) int winnersCount,
    @Default(0) int alternatesCount,
    String? seed,
  }) = _DrawConfig;

  factory DrawConfig.fromJson(Map<String, Object?> json) => _$DrawConfigFromJson(json);
}
