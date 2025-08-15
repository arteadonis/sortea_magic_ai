import 'package:flutter/material.dart';

/// Builds the application ThemeData.
ThemeData buildAppTheme() {
  const Color seed = Color(0xFF4F46E5); // Indigo-600 vibe
  final ColorScheme scheme = ColorScheme.fromSeed(seedColor: seed);
  final TextTheme textTheme = Typography.blackMountainView.copyWith(
    titleLarge: const TextStyle(fontWeight: FontWeight.w600),
    bodyMedium: const TextStyle(height: 1.2),
  );
  return ThemeData(
    colorScheme: scheme,
    useMaterial3: true,
    textTheme: textTheme,
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      filled: true,
      isDense: true,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: scheme.surface,
      foregroundColor: scheme.onSurface,
      elevation: 0,
      centerTitle: true,
    ),
  );
}
