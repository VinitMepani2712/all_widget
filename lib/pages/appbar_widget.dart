import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar Example'),
      ),
      body: Center(
        child: Text('Hello, Welcome to Flutter Journey!'),
      ),
    );
  }
}
