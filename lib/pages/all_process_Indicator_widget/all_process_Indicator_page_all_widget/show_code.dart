import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

class ShowCodePage extends StatelessWidget {
  const ShowCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Code Snippet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SelectableText(
                  'To add this type of loader in your application, '
                  'you must add "loading_indicator: ^3.1.1" in your pubspec.yaml under dependencies.',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16.0),
                ),
                const SizedBox(height: 20),

                
                HighlightView(
                  'dependencies:\n  loading_indicator: ^3.1.1',
                  language: 'yaml',
                  theme: githubTheme,
                  padding: const EdgeInsets.all(12),
                  textStyle: const TextStyle(
                    fontFamily: 'RobotoMono',
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 20),
                
                HighlightView(
                  """const List<Color> _kDefaultRainbowColors = [
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.green,
  Colors.blue,
  Colors.indigo,
  Colors.purple,
];

"""
                  'LoadingIndicator(\n'
                  '  colors: _kDefaultRainbowColors,\n'
                  '  indicatorType: Indicator.values[index],\n'
                  '  strokeWidth: 3,\n'
                  '),',
                  language: 'dart',
                  theme: githubTheme,
                  padding: const EdgeInsets.all(12),
                  textStyle: const TextStyle(
                    fontFamily: 'RobotoMono',
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

   void _copyToClipboard(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Code copied to clipboard'),
      ),
    );
  }
}
