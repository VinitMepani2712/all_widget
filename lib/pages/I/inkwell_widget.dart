import 'package:flutter/material.dart';

class InkWellWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter InkWell Example'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            // Handle tap
            print('InkWell tapped!');
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('InkWell pressed!'),
                duration: Duration(seconds: 2),
              ),
            );
          },
          onLongPress: () {
            print('Long Pressed');
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('InkWell Long pressed!'),
                duration: Duration(seconds: 2),
              ),
            );
          },
          child: Container(
            height: 250,
            width: 250,
            padding: const EdgeInsets.all(16),
            child: const Center(
                child: Text('Tap me!',
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)))),
          ),
        ),
      ),
    );
  }
}
