import 'package:flutter_test/flutter_test.dart';
import 'package:sortea_magic_ai/domain/models/comment.dart';
import 'package:sortea_magic_ai/domain/models/draw_config.dart';
import 'package:sortea_magic_ai/domain/services/draw_service.dart';

void main() {
  group('DrawService', () {
    final DrawService svc = DrawService();
    final DateTime t = DateTime.fromMillisecondsSinceEpoch(0, isUtc: true);

    List<Comment> makeComments() {
      return <Comment>[
        Comment(id: '1', username: 'alice', text: '@x @y', timestamp: t),
        Comment(id: '2', username: 'bob', text: '@x', timestamp: t),
        Comment(id: '3', username: 'carol', text: 'hello @x @y', timestamp: t),
        Comment(id: '4', username: 'dave', text: 'no mentions', timestamp: t),
        Comment(id: '5', username: 'eve', text: '@x @y @z', timestamp: t),
      ];
    }

    test('deterministic with fixed seed', () {
      final DrawConfig cfg = const DrawConfig(
        minMentions: 1,
        dedupeByUser: true,
        winnersCount: 2,
        alternatesCount: 1,
        seed: 'fixed-seed',
      );
      final result1 = svc.draw(comments: makeComments(), config: cfg);
      final result2 = svc.draw(comments: makeComments(), config: cfg);

      expect(result1.inputHash, result2.inputHash);
      expect(result1.winners.map((e) => e.id).toList(),
          result2.winners.map((e) => e.id).toList());
      expect(result1.alternates.map((e) => e.id).toList(),
          result2.alternates.map((e) => e.id).toList());
    });

    test('does not select more than available after filtering', () {
      // With minMentions set to 3, only comment id 5 qualifies.
      final DrawConfig cfg = const DrawConfig(
        minMentions: 3,
        dedupeByUser: true,
        winnersCount: 3,
        alternatesCount: 3,
        seed: 's',
      );
      final result = svc.draw(comments: makeComments(), config: cfg);
      expect(result.winners.length + result.alternates.length, 1);
    });
  });
}
