import 'package:flutter/material.dart';

class PopupMenuButtonWidget extends StatelessWidget {
  const PopupMenuButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButton Example'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String result) {
              // Action to perform when a menu item is selected
              print('Selected option: $result');
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'option1',
                child: Text('Option 1'),
              ),
              PopupMenuItem<String>(
                value: 'option2',
                child: Text('Option 2'),
              ),
              PopupMenuItem<String>(
                value: 'option3',
                child: Text('Option 3'),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Click the menu button in the app bar.',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
