import 'dart:math';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';
import 'package:sortea_magic_ai/domain/models/comment.dart';
import 'package:sortea_magic_ai/domain/models/draw_config.dart';
import 'package:sortea_magic_ai/domain/models/draw_result.dart';
import 'package:sortea_magic_ai/domain/services/filter_service.dart';
import 'package:sortea_magic_ai/domain/services/hash_service.dart';

/// Encapsulates winner selection logic.
class DrawService {
  DrawService({FilterService? filterService, HashService? hashService})
      : _filter = filterService ?? const FilterService(),
        _hash = hashService ?? const HashService();

  final FilterService _filter;
  final HashService _hash;

  /// Perform a draw using the provided [comments] and [config].
  DrawResult draw({required final List<Comment> comments, required final DrawConfig config}) {
    final List<Comment> filtered = _filter.applyFilters(
      comments: comments,
      minMentions: config.minMentions,
      dedupeByUser: config.dedupeByUser,
    );

    final String inputHash = _hash.computeInputHash(filtered);
    final int totalNeeded = config.winnersCount + config.alternatesCount;
    final List<Comment> selection = _selectWithoutReplacement(filtered, totalNeeded, _createRandom(config.seed));

    final List<Comment> winners = selection.take(config.winnersCount).toList();
    final List<Comment> alternates = selection.skip(config.winnersCount).toList();

    return DrawResult(
      winners: winners,
      alternates: alternates,
      inputHash: inputHash,
      configSnapshot: config,
      createdAt: DateTime.now().toUtc(),
    );
  }

  List<Comment> _selectWithoutReplacement(final List<Comment> source, final int count, final Random rand) {
    if (source.isEmpty || count <= 0) return <Comment>[];
    final int n = count > source.length ? source.length : count;
    final List<Comment> pool = List<Comment>.from(source);
    // Partial Fisher-Yates shuffle for first n elements.
    for (int i = 0; i < n; i++) {
      final int j = i + rand.nextInt(pool.length - i);
      final Comment tmp = pool[i];
      pool[i] = pool[j];
      pool[j] = tmp;
    }
    return pool.sublist(0, n);
  }

  Random _createRandom(final String? seed) {
    if (seed == null || seed.isEmpty) {
      return Random.secure();
    }
    // Derive a deterministic 32-bit seed from SHA-256(seed).
    final Uint8List bytes = Uint8List.fromList(sha256.convert(seed.codeUnits).bytes);
    final int s = bytes.buffer.asByteData().getUint32(0, Endian.big);
    return Random(s);
  }
}
