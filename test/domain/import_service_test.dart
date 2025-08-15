import 'package:flutter_test/flutter_test.dart';
import 'package:sortea_magic_ai/domain/models/comment.dart';
import 'package:sortea_magic_ai/domain/services/import_service.dart';

void main() {
  group('ImportService', () {
    const ImportService svc = ImportService();

    test('parseJson supports array root', () {
      const String json = '[{"id":"1","username":"alice","text":"hi","timestamp":"2025-01-01T00:00:00Z"}]';
      final List<Comment> out = svc.parseJson(json);
      expect(out.length, 1);
      expect(out.first.username, 'alice');
    });

    test('parseJson supports object with comments key', () {
      const String json = '{"comments":[{"id":"1","username":"bob","text":"yo"}] }';
      final List<Comment> out = svc.parseJson(json);
      expect(out.length, 1);
      expect(out.first.username, 'bob');
    });

    test('parseCsv with header', () {
      const String csv = 'id,username,text\n1,alice,Hello';
      final List<Comment> out = svc.parseCsv(csv);
      expect(out.length, 1);
      expect(out.first.username, 'alice');
    });

    test('parseCsv without header', () {
      const String csv = '1,carol,Hi there';
      final List<Comment> out = svc.parseCsv(csv);
      expect(out.length, 1);
      expect(out.first.username, 'carol');
    });

    test('parseRawLines with username: text', () {
      const String raw = 'alice: hello\nbob: world';
      final List<Comment> out = svc.parseRawLines(raw);
      expect(out.length, 2);
      expect(out.first.username, 'alice');
    });

    test('detectAndParse chooses parser based on filename/content', () {
      final List<Comment> a = svc.detectAndParse('[{"id":"1","username":"x","text":"t"}]', filename: 'x.json');
      final List<Comment> b = svc.detectAndParse('1,alice,hi', filename: 'x.csv');
      final List<Comment> c = svc.detectAndParse('user: hello');
      expect(a.length, 1);
      expect(b.length, 1);
      expect(c.length, 1);
    });
  });
}
