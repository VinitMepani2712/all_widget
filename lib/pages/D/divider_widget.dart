import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Divider'),
      ),
      body: const Column(
        children: [
          ListTile(
            title: Text('Item 1'),
          ),
          Divider(
            color: Colors.red,
            height: 30,
            thickness: 4,
            indent: 32,
            endIndent: 32,
          ), // Simple horizontal divider
          ListTile(
            title: Text('Item 2'),
          ),
          Divider(
            color: Colors.red,
            height: 30,
            thickness: 4,
            indent: 10,
            endIndent: 10,
          ), // Another horizontal divider
          ListTile(
            title: Text('Item 3'),
          ),
          Divider(
            color: Colors.red,
            height: 30,
            thickness: 4,
            indent: 32,
            endIndent: 32,
          ),
        ],
      ),
    );
  }
}
