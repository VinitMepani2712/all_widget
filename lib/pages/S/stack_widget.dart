import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget Example'),
      ),
      body: Stack(
        alignment: Alignment.center, // Alignment for the children inside Stack
        children:[
          Container(
            color: Colors.blue,
            width: 300,
            height: 300,
          ),
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              color: Colors.red,
              width: 200,
              height: 200,
            ),
          ),
          Positioned(
            bottom: 50,
            right: 50,
            child: Container(
              color: Colors.green,
              width: 100,
              height: 100,
            ),
          ),
          Text(
            'Hello, Stack!',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
