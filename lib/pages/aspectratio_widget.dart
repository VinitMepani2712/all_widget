import 'package:flutter/material.dart';

class AspectRatioWidget extends StatelessWidget {
  const AspectRatioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AspectRatio Widget Example'),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9, // You can adjust the aspect ratio as needed
          child: Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                'Aspect Ratio Widget',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
