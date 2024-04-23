import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icons Example'),
      ),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              size: 50,
              color: Colors.yellow,
              semanticLabel: "Star",
            ),
            SizedBox(width: 20),
            Icon(
              Icons.favorite,
              size: 50,
              color: Colors.red,
              semanticLabel: "Heart",
            ),
            SizedBox(width: 20),
            Icon(
              Icons.thumb_up,
              size: 50,
              color: Colors.blue,
              semanticLabel: "Thumb Up",
            ),
          ],
        ),
      ),
    );
  }
}
