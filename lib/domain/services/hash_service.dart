import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:sortea_magic_ai/domain/models/comment.dart';
import 'package:sortea_magic_ai/domain/services/filter_service.dart';

/// Computes transparency hashes for input sets.
class HashService {
  const HashService({FilterService? filterService}) : _filter = filterService ?? const FilterService();

  final FilterService _filter;

  /// Compute a stable SHA-256 hex hash for the input comments.
  String computeInputHash(final List<Comment> comments) {
    final List<String> lines = comments
        .map((Comment c) => '${_filter.normalizeUsername(c.username)}|${c.text.trim()}')
        .toList()
      ..sort();
    final String canonical = lines.join('\n');
    final List<int> bytes = utf8.encode(canonical);
    final Digest digest = sha256.convert(bytes);
    return digest.toString();
  }
}
