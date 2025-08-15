import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sortea_magic_ai/application/providers.dart';
import 'package:sortea_magic_ai/domain/models/draw_config.dart';
import 'package:sortea_magic_ai/domain/models/draw_result.dart';

/// Draw screen: configure winners/alternates and run draw.
class DrawScreen extends ConsumerStatefulWidget {
  const DrawScreen({super.key});
  @override
  ConsumerState<DrawScreen> createState() => _DrawScreenState();
}

class _DrawScreenState extends ConsumerState<DrawScreen> {
  late int winners;
  late int alternates;
  String seed = '';

  @override
  void initState() {
    super.initState();
    final DrawConfig cfg = ref.read(drawConfigProvider);
    winners = cfg.winnersCount;
    alternates = cfg.alternatesCount;
  }

  void _runDraw() {
    final DrawConfig current = ref.read(drawConfigProvider);
    final DrawConfig cfg = current.copyWith(winnersCount: winners, alternatesCount: alternates, seed: seed.isEmpty ? null : seed);
    ref.read(drawConfigProvider.notifier).state = cfg;
    final drawService = ref.read(drawServiceProvider);
    final comments = ref.read(commentsProvider);
    final DrawResult result = drawService.draw(comments: comments, config: cfg);
    ref.read(lastDrawResultProvider.notifier).state = result;
    Navigator.pushNamed(context, '/results');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Draw')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 560),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      initialValue: winners.toString(),
                      decoration: const InputDecoration(labelText: 'Winners'),
                      keyboardType: TextInputType.number,
                      onChanged: (String v) => setState(() => winners = int.tryParse(v) ?? 1),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextFormField(
                      initialValue: alternates.toString(),
                      decoration: const InputDecoration(labelText: 'Alternates'),
                      keyboardType: TextInputType.number,
                      onChanged: (String v) => setState(() => alternates = int.tryParse(v) ?? 0),
                    ),
                  ),
                ]),
                const SizedBox(height: 12),
                TextFormField(
                  initialValue: seed,
                  decoration: const InputDecoration(labelText: 'Seed (optional for reproducibility)'),
                  onChanged: (String v) => setState(() => seed = v),
                ),
                const SizedBox(height: 16),
                FilledButton.icon(
                  onPressed: _runDraw,
                  icon: const Icon(Icons.casino),
                  label: const Text('Run draw'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
