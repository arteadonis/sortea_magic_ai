import 'package:flutter_test/flutter_test.dart';
import 'package:sortea_magic_ai/domain/models/comment.dart';
import 'package:sortea_magic_ai/domain/services/filter_service.dart';

void main() {
  group('FilterService', () {
    final FilterService svc = const FilterService();
    final DateTime now = DateTime.fromMillisecondsSinceEpoch(0, isUtc: true);

    List<Comment> sampleComments() {
      return <Comment>[
        Comment(id: '1', username: 'Alice', text: 'Great! @bob @carol', timestamp: now),
        Comment(id: '2', username: 'alice', text: 'Another entry @dave', timestamp: now),
        Comment(id: '3', username: 'Eve', text: 'No mentions', timestamp: now),
        Comment(id: '4', username: 'Bob', text: 'Hi @carol @eve', timestamp: now),
      ];
    }

    test('dedupes by normalized username', () {
      final List<Comment> filtered = svc.applyFilters(
        comments: sampleComments(),
        minMentions: 0,
        dedupeByUser: true,
      );
      // Alice appears twice with different case; expect only one.
      expect(filtered.where((c) => svc.normalizeUsername(c.username) == 'alice').length, 1);
    });

    test('filters by minimum mentions', () {
      final List<Comment> filtered = svc.applyFilters(
        comments: sampleComments(),
        minMentions: 2,
        dedupeByUser: false,
      );
      // Only comments with >=2 mentions remain (ids 1 and 4)
      expect(filtered.map((c) => c.id), containsAll(<String>['1', '4']));
      expect(filtered.length, 2);
    });
  });
}
