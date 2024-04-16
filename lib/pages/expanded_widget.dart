import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Widget Example'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            height: 100,
            width: double.infinity,
            child: Center(child: Text('Header')),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: Center(child: Text('Expanded Content')),
            ),
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: double.infinity,
            child: Center(child: Text('Footer')),
          ),
        ],
      ),
    );
  }
}
