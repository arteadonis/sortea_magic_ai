import 'package:freezed_annotation/freezed_annotation.dart';

part 'legal_draft.freezed.dart';
part 'legal_draft.g.dart';

/// AI-generated legal draft content (editable by user).
@freezed
abstract class LegalDraft with _$LegalDraft {
  const factory LegalDraft({
    required String title,
    required String body,
    @Default({}) Map<String, String> metadata,
  }) = _LegalDraft;

  factory LegalDraft.fromJson(Map<String, Object?> json) => _$LegalDraftFromJson(json);
}
