import 'package:flutter/material.dart';

class LinearProgressIndicatorPage extends StatelessWidget {
  const LinearProgressIndicatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample Progress Bar'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LinearProgressIndicator(
              backgroundColor: Colors.amberAccent,
              valueColor: AlwaysStoppedAnimation(Colors.teal),
              minHeight: 5,
            )
          ],
        ),
      ),
    );
  }
}
