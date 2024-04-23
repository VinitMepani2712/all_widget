import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget ({super.key});

  @override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Widget Example'),
      ),
      body: Center(
        child: Text(
          'Hello, Scaffold!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed action here
          print('Floating action button pressed');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
