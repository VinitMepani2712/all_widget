import 'package:flutter/material.dart';

class PositionedWidget extends StatelessWidget {
  const PositionedWidget({super.key});

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Positioned Widget Example'),
      ),
      body: Stack(
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(
                child: Text(
                  'Positioned Widget',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}