import 'package:flutter/material.dart';

class CircularProgressIndicatorPage extends StatelessWidget {
  const CircularProgressIndicatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample Progress Bar'),
        backgroundColor: Color(0xFF5BA98F),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              backgroundColor: Colors.amberAccent,
              valueColor: AlwaysStoppedAnimation(Colors.teal),
              strokeWidth: 5,
            ),
          ],
        ),
      ),
    );
  }
}
