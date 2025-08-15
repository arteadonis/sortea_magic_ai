import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sortea_magic_ai/application/providers.dart';
import 'package:sortea_magic_ai/domain/models/draw_config.dart';

/// Filters screen: configure dedupe and minimum mentions.
class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final DrawConfig cfg = ref.watch(drawConfigProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Filters')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 560),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SwitchListTile(
                  value: cfg.dedupeByUser,
                  title: const Text('Exclude duplicate comments by the same user'),
                  onChanged: (bool v) => ref.read(drawConfigProvider.notifier).state = cfg.copyWith(dedupeByUser: v),
                ),
                const SizedBox(height: 8),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Slider(
                        value: cfg.minMentions.toDouble(),
                        min: 0,
                        max: 5,
                        divisions: 5,
                        label: '${cfg.minMentions}',
                        onChanged: (double v) => ref.read(drawConfigProvider.notifier).state = cfg.copyWith(minMentions: v.toInt()),
                      ),
                    ),
                    SizedBox(
                      width: 64,
                      child: Text('Min @: ${cfg.minMentions}', textAlign: TextAlign.end),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: () => Navigator.pushNamed(context, '/draw'),
                  child: const Text('Continue to draw'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
