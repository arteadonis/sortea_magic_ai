import 'package:sortea_magic_ai/domain/models/comment.dart';

/// Filters for giveaway participation.
class FilterService {
  const FilterService();

  /// Normalize username for comparisons.
  String normalizeUsername(final String username) {
    return username.trim().toLowerCase();
  }

  /// Count mentions in a comment text using a basic regex.
  int countMentions(final String text) {
    final RegExp re = RegExp(r'@([A-Za-z0-9._]{1,30})');
    return re.allMatches(text).length;
  }

  /// Apply duplicate and mentions filters.
  List<Comment> applyFilters({
    required final List<Comment> comments,
    required final int minMentions,
    required final bool dedupeByUser,
  }) {
    final List<Comment> result = <Comment>[];
    final Set<String> seenUsers = <String>{};
    for (final Comment c in comments) {
      if (dedupeByUser) {
        final String key = normalizeUsername(c.username);
        if (seenUsers.contains(key)) {
          continue;
        }
        seenUsers.add(key);
      }
      if (minMentions > 0) {
        if (countMentions(c.text) < minMentions) {
          continue;
        }
      }
      result.add(c);
    }
    return result;
  }
}
