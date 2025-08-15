import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sortea_magic_ai/domain/models/comment.dart';
import 'package:sortea_magic_ai/domain/models/draw_config.dart';
import 'package:sortea_magic_ai/domain/models/draw_result.dart';
import 'package:sortea_magic_ai/domain/services/draw_service.dart';
import 'package:sortea_magic_ai/domain/services/filter_service.dart';
import 'package:sortea_magic_ai/domain/services/hash_service.dart';

/// Global providers for app state and services.
final StateProvider<List<Comment>> commentsProvider = StateProvider<List<Comment>>((Ref ref) {
  return <Comment>[];
});

final StateProvider<DrawConfig> drawConfigProvider = StateProvider<DrawConfig>((Ref ref) {
  return const DrawConfig(minMentions: 0, dedupeByUser: true, winnersCount: 1, alternatesCount: 0);
});

final Provider<FilterService> filterServiceProvider = Provider<FilterService>((Ref ref) {
  return const FilterService();
});

final Provider<HashService> hashServiceProvider = Provider<HashService>((Ref ref) {
  return const HashService();
});

final Provider<DrawService> drawServiceProvider = Provider<DrawService>((Ref ref) {
  return DrawService(
    filterService: ref.read(filterServiceProvider),
    hashService: ref.read(hashServiceProvider),
  );
});

final StateProvider<DrawResult?> lastDrawResultProvider = StateProvider<DrawResult?>((Ref ref) {
  return null;
});
