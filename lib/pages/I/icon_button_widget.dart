import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IconButton Example'),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(
            Icons.favorite,
            size: 250,
          ),
          onPressed: () {
            // Handle button press
            print('Button Pressed!');
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Button pressed!'),
                duration: Duration(seconds: 2),
              ),
            );
          },
          tooltip: 'Like',
        ),
      ),
    );
  }
}
