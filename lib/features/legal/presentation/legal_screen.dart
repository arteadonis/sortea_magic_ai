import 'package:flutter/material.dart';

/// Legal screen: placeholder for AI-generated legal terms UI.
class LegalScreen extends StatelessWidget {
  const LegalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Legal')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text('AI-generated Terms & Conditions editor (coming soon).'),
        ),
      ),
    );
  }
}
