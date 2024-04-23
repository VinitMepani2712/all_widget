import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

class CodePage extends StatelessWidget {
  final String code;

  CodePage({required this.code});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Code')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: GestureDetector(
          onLongPress: () {
            _copyToClipboard(context, code);
          },
          child: HighlightView(
            code,
            language: 'dart',
            theme: githubTheme,
            padding: EdgeInsets.all(5),
            textStyle: TextStyle(fontFamily: 'monospace', fontSize: 8.5),
          ),
        ),
      ),
    );
  }

  void _copyToClipboard(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Code copied to clipboard'),
      ),
    );
  }
}
