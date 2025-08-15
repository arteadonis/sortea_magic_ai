import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sortea_magic_ai/domain/models/comment.dart';
import 'package:sortea_magic_ai/domain/models/draw_config.dart';

part 'draw_result.freezed.dart';
part 'draw_result.g.dart';

/// Result of a draw, including transparency metadata.
@freezed
abstract class DrawResult with _$DrawResult {
  const factory DrawResult({
    required List<Comment> winners,
    required List<Comment> alternates,
    required String inputHash,
    required DrawConfig configSnapshot,
    required DateTime createdAt,
  }) = _DrawResult;

  factory DrawResult.fromJson(Map<String, Object?> json) => _$DrawResultFromJson(json);
}
