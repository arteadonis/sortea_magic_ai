import 'package:flutter/material.dart';

/// Filters screen: placeholder for dedupe and mentions filters.
class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filters')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text('Configure basic filters (dedupe, min mentions).'),
              const SizedBox(height: 12),
              FilledButton(
                onPressed: () => Navigator.pushNamed(context, '/draw'),
                child: const Text('Continue to draw'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
