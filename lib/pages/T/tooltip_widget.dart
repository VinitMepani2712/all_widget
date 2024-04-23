import 'package:flutter/material.dart';

class TooltipWidget extends StatelessWidget {
  const TooltipWidget({super.key});

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tooltip Widget Example'),
      ),
      body: Center(
        child: Tooltip(
          message: 'Click me!',
          child: ElevatedButton(
            onPressed: () {
              // Action to perform when the button is pressed
              print('Button pressed');
            },
            child: Text('Hover or long-press me'),
          ),
        ),
      ),
    );
  }
}
