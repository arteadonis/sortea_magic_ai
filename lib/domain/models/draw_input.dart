import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sortea_magic_ai/domain/models/comment.dart';

part 'draw_input.freezed.dart';
part 'draw_input.g.dart';

/// Input dataset for a draw.
@freezed
abstract class DrawInput with _$DrawInput {
  const factory DrawInput({
    required String sourceUrl,
    required List<Comment> comments,
  }) = _DrawInput;

  factory DrawInput.fromJson(Map<String, Object?> json) => _$DrawInputFromJson(json);
}
