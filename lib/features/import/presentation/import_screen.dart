import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sortea_magic_ai/application/providers.dart';
import 'package:sortea_magic_ai/domain/models/comment.dart';
import 'package:sortea_magic_ai/domain/services/import_service.dart';

/// Import screen: CSV/JSON/Clipboard/Assets import.
class ImportScreen extends ConsumerStatefulWidget {
  const ImportScreen({super.key});

  @override
  ConsumerState<ImportScreen> createState() => _ImportScreenState();
}

class _ImportScreenState extends ConsumerState<ImportScreen> {
  final ImportService importer = const ImportService();
  String status = 'No data imported yet';
  List<Comment> preview = <Comment>[];

  Future<void> _importFromFile() async {
    try {
      final FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: <String>['csv', 'json', 'txt'],
        allowMultiple: false,
        withData: true,
      );
      if (result == null || result.files.isEmpty) return;
      final PlatformFile file = result.files.single;
      final Uint8List? bytes = file.bytes;
      if (bytes == null) {
        setState(() => status = 'File read error');
        return;
      }
      final String content = String.fromCharCodes(bytes);
      final List<Comment> comments = importer.detectAndParse(content, filename: file.name);
      _applyImported(comments, source: 'File: ${file.name}');
    } catch (e) {
      setState(() => status = 'Import failed: $e');
    }
  }

  Future<void> _importFromClipboard() async {
    try {
      final ClipboardData? data = await Clipboard.getData(Clipboard.kTextPlain);
      final String text = data?.text ?? '';
      final List<Comment> comments = importer.detectAndParse(text);
      _applyImported(comments, source: 'Clipboard');
    } catch (e) {
      setState(() => status = 'Clipboard failed: $e');
    }
  }

  Future<void> _importSampleAsset(final String assetPath) async {
    try {
      final String text = await rootBundle.loadString(assetPath);
      final List<Comment> comments = importer.detectAndParse(text, filename: assetPath);
      _applyImported(comments, source: 'Sample asset');
    } catch (e) {
      setState(() => status = 'Asset load failed: $e');
    }
  }

  void _applyImported(final List<Comment> comments, {required final String source}) {
    if (comments.isEmpty) {
      setState(() {
        status = 'No comments parsed from $source';
        preview = <Comment>[];
      });
      return;
    }
    ref.read(commentsProvider.notifier).state = comments;
    setState(() {
      status = 'Imported ${comments.length} comments from $source';
      preview = comments.take(3).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final int count = ref.watch(commentsProvider).length;
    return Scaffold(
      appBar: AppBar(title: const Text('Import')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 720),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(status),
                const SizedBox(height: 12),
                Wrap(spacing: 12, runSpacing: 12, children: <Widget>[
                  FilledButton.icon(
                    onPressed: _importFromFile,
                    icon: const Icon(Icons.upload_file),
                    label: const Text('Pick CSV/JSON'),
                  ),
                  OutlinedButton.icon(
                    onPressed: _importFromClipboard,
                    icon: const Icon(Icons.paste),
                    label: const Text('Paste from clipboard'),
                  ),
                  OutlinedButton.icon(
                    onPressed: () => _importSampleAsset('assets/examples/comments_sample.csv'),
                    icon: const Icon(Icons.insert_drive_file),
                    label: const Text('Load sample CSV'),
                  ),
                  OutlinedButton.icon(
                    onPressed: () => _importSampleAsset('assets/examples/comments_sample.json'),
                    icon: const Icon(Icons.insert_drive_file),
                    label: const Text('Load sample JSON'),
                  ),
                ]),
                const SizedBox(height: 16),
                if (preview.isNotEmpty) ...<Widget>[
                  Text('Preview (first ${preview.length}):'),
                  const SizedBox(height: 8),
                  ...preview.map((Comment c) => Text('@${c.username}: ${c.text}')),
                ],
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: count > 0 ? () => Navigator.pushNamed(context, '/filters') : null,
                  child: const Text('Continue to filters'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
