import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Widget Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            
            print('Button pressed');
          },
          child: Text('Yoy Pressed button '),
        ),
      ),
    );
  }
}
