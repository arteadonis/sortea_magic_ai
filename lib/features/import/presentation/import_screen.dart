import 'package:flutter/material.dart';

/// Import screen: placeholder for CSV/JSON/Clipboard import.
class ImportScreen extends StatelessWidget {
  const ImportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Import')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text('Choose how to import comments (CSV/JSON/Clipboard).'),
              const SizedBox(height: 12),
              FilledButton(
                onPressed: () => Navigator.pushNamed(context, '/filters'),
                child: const Text('Continue to filters'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
