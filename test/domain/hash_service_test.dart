import 'package:flutter_test/flutter_test.dart';
import 'package:sortea_magic_ai/domain/models/comment.dart';
import 'package:sortea_magic_ai/domain/services/hash_service.dart';

void main() {
  group('HashService', () {
    final HashService svc = const HashService();
    final DateTime t = DateTime.fromMillisecondsSinceEpoch(0, isUtc: true);

    test('is order independent and username case-insensitive', () {
      final List<Comment> a = <Comment>[
        Comment(id: '1', username: 'Alice', text: 'Hello', timestamp: t),
        Comment(id: '2', username: 'bob', text: 'World', timestamp: t),
      ];
      final List<Comment> b = <Comment>[
        Comment(id: 'x', username: 'BOB', text: 'World', timestamp: t),
        Comment(id: 'y', username: 'alice', text: 'Hello', timestamp: t),
      ];
      final String ha = svc.computeInputHash(a);
      final String hb = svc.computeInputHash(b);
      expect(ha, hb);
    });

    test('different texts produce different hashes', () {
      final List<Comment> a = <Comment>[
        Comment(id: '1', username: 'user', text: 'A', timestamp: t),
      ];
      final List<Comment> b = <Comment>[
        Comment(id: '1', username: 'user', text: 'B', timestamp: t),
      ];
      expect(svc.computeInputHash(a) == svc.computeInputHash(b), isFalse);
    });
  });
}
