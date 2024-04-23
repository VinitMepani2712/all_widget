import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Widget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(
              'Hello,',
              style: TextStyle(fontSize: 24.0),
            ),
            Text(
              'Flutter!',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0), // Adds some space between widgets
            ElevatedButton(
              onPressed: () {
                // Add your button press logic here
                print('Button pressed');
              },
              child: Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
