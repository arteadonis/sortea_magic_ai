import 'dart:convert';

import 'package:sortea_magic_ai/domain/models/comment.dart';

/// Parses and imports comments from various sources.
class ImportService {
  const ImportService();

  List<Comment> parseJson(final String text) {
    final Object? decoded = jsonDecode(text);
    if (decoded is List) {
      return _fromList(decoded.cast<Object?>());
    }
    if (decoded is Map<String, Object?> && decoded['comments'] is List) {
      return _fromList((decoded['comments'] as List).cast<Object?>());
    }
    return <Comment>[];
  }

  List<Comment> parseCsv(final String text) {
    final List<Comment> out = <Comment>[];
    final List<String> lines = const LineSplitter().convert(text);
    if (lines.isEmpty) return out;
    final Iterable<String> iter = lines.first.toLowerCase().contains('username')
        ? lines.skip(1)
        : lines; // optional header
    for (final String raw in iter) {
      if (raw.trim().isEmpty) continue;
      final List<String> parts = _splitCsvLine(raw);
      if (parts.length < 3) continue; // expect at least id,username,text[,timestamp]
      final String id = parts[0].trim();
      final String username = parts[1].trim();
      final String textPart = parts[2].trim();
      final DateTime ts = parts.length > 3 ? _tryParseDate(parts[3]) : DateTime.now().toUtc();
      out.add(Comment(id: id, username: username, text: textPart, timestamp: ts));
    }
    return out;
  }

  List<Comment> parseRawLines(final String text) {
    final List<Comment> out = <Comment>[];
    final List<String> lines = const LineSplitter().convert(text);
    int i = 0;
    for (final String raw in lines) {
      final String line = raw.trim();
      if (line.isEmpty) continue;
      final int sep = line.indexOf(':');
      if (sep <= 0) continue; // expect "username: comment text"
      final String username = line.substring(0, sep).trim();
      final String body = line.substring(sep + 1).trim();
      out.add(Comment(id: (++i).toString(), username: username, text: body, timestamp: DateTime.now().toUtc()));
    }
    return out;
  }

  List<Comment> detectAndParse(final String text, {final String? filename}) {
    if (text.trim().isEmpty) return <Comment>[];
    final String lowerName = filename?.toLowerCase() ?? '';
    if (lowerName.endsWith('.json')) return parseJson(text);
    if (lowerName.endsWith('.csv')) return parseCsv(text);
    // Heuristics by content
    final String t = text.trimLeft();
    if (t.startsWith('[') || t.startsWith('{')) return parseJson(text);
    if (t.contains(',') && t.contains('\n')) return parseCsv(text);
    return parseRawLines(text);
  }

  List<Comment> _fromList(final List<Object?> list) {
    final List<Comment> out = <Comment>[];
    for (final Object? item in list) {
      if (item is Map<String, Object?>) {
        final String id = (item['id'] ?? '').toString();
        final String username = (item['username'] ?? '').toString();
        final String text = (item['text'] ?? '').toString();
        final DateTime ts = item['timestamp'] is String
            ? _tryParseDate(item['timestamp'] as String)
            : DateTime.now().toUtc();
        if (id.isEmpty || username.isEmpty) continue;
        out.add(Comment(id: id, username: username, text: text, timestamp: ts));
      }
    }
    return out;
  }

  DateTime _tryParseDate(final String v) {
    try {
      return DateTime.parse(v).toUtc();
    } catch (_) {
      return DateTime.now().toUtc();
    }
  }

  List<String> _splitCsvLine(final String line) {
    // Minimal CSV splitter (no quotes support). For MVP only.
    return line.split(',');
  }
}
