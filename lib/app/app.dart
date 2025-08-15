import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sortea_magic_ai/app/theme.dart';
import 'package:sortea_magic_ai/features/draw/presentation/draw_screen.dart';
import 'package:sortea_magic_ai/features/filters/presentation/filters_screen.dart';
import 'package:sortea_magic_ai/features/home/presentation/home_screen.dart';
import 'package:sortea_magic_ai/features/import/presentation/import_screen.dart';
import 'package:sortea_magic_ai/features/legal/presentation/legal_screen.dart';
import 'package:sortea_magic_ai/features/results/presentation/results_screen.dart';

/// Root application widget.
class SorteaMagicApp extends ConsumerWidget {
  const SorteaMagicApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = buildAppTheme();
    return MaterialApp(
      title: 'SorteaMagic AI',
      theme: theme,
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const HomeScreen(),
        '/import': (BuildContext context) => const ImportScreen(),
        '/filters': (BuildContext context) => const FiltersScreen(),
        '/draw': (BuildContext context) => const DrawScreen(),
        '/results': (BuildContext context) => const ResultsScreen(),
        '/legal': (BuildContext context) => const LegalScreen(),
      },
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
    );
  }
}
