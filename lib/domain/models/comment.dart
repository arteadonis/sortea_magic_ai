import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

/// Represents a single Instagram comment entry.
@freezed
abstract class Comment with _$Comment {
  const factory Comment({
    required String id,
    required String username,
    required String text,
    required DateTime timestamp,
  }) = _Comment;

  factory Comment.fromJson(Map<String, Object?> json) => _$CommentFromJson(json);
}
