import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sortea_magic_ai/application/providers.dart';

/// Results screen: shows winners, alternates, and transparency data.
class ResultsScreen extends ConsumerWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(lastDrawResultProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Results')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 720),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: result == null
                ? const Text('No draw has been executed yet.')
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Input hash: ${result.inputHash}'),
                      const SizedBox(height: 8),
                      Text('Winners (${result.winners.length})', style: Theme.of(context).textTheme.titleMedium),
                      const SizedBox(height: 4),
                      ...result.winners.map((e) => Text('@${e.username}: ${e.text}')),
                      const SizedBox(height: 12),
                      Text('Alternates (${result.alternates.length})', style: Theme.of(context).textTheme.titleMedium),
                      const SizedBox(height: 4),
                      ...result.alternates.map((e) => Text('@${e.username}: ${e.text}')),
                      const SizedBox(height: 16),
                      Row(
                        children: <Widget>[
                          FilledButton.icon(
                            onPressed: () => Navigator.pushNamed(context, '/draw'),
                            icon: const Icon(Icons.refresh),
                            label: const Text('Run again'),
                          ),
                          const SizedBox(width: 12),
                          OutlinedButton.icon(
                            onPressed: () => Navigator.pushNamed(context, '/legal'),
                            icon: const Icon(Icons.description),
                            label: const Text('Generate legal terms'),
                          ),
                        ],
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
