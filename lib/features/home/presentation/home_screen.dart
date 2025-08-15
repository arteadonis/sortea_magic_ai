import 'package:flutter/material.dart';
import 'package:sortea_magic_ai/domain/services/url_validation.dart';

/// Home screen of SorteaMagic AI.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('SorteaMagic AI')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 560),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Select winners for your Instagram giveaways',
                  style: theme.textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                const _InstagramUrlField(),
                const SizedBox(height: 12),
                const _PrimaryActions(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _InstagramUrlField extends StatefulWidget {
  const _InstagramUrlField();

  @override
  State<_InstagramUrlField> createState() => _InstagramUrlFieldState();
}

class _InstagramUrlFieldState extends State<_InstagramUrlField> {
  final TextEditingController controller = TextEditingController();
  bool isValid = false;
  final UrlValidationService urlValidation = const UrlValidationService();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        labelText: 'Instagram post URL',
        hintText: 'https://www.instagram.com/p/…',
        prefixIcon: Icon(Icons.link),
      ),
      keyboardType: TextInputType.url,
      onChanged: (String value) {
        final bool next = urlValidation.isLikelyInstagramPostUrl(value);
        if (next != isValid) {
          setState(() {
            isValid = next;
          });
        }
      },
    );
  }
}

class _PrimaryActions extends StatelessWidget {
  const _PrimaryActions();

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: () => Navigator.pushNamed(context, '/import'),
      icon: const Icon(Icons.play_arrow_rounded),
      label: const Text('Continue'),
    );
  }
}
