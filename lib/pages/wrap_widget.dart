import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Widget Example'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          color: Colors.grey[300],
          child: Wrap(
            spacing: 8.0, // horizontal space between children
            runSpacing: 8.0, // vertical space between lines
            children: <Widget>[
              Chip(
                label: Text('Laptop'),
                backgroundColor: Colors.blue,
              ),
              Chip(
                label: Text('Phone'),
                backgroundColor: Colors.green,
              ),
              Chip(
                label: Text('Tablet'),
                backgroundColor: Colors.orange,
              ),
              Chip(
                label: Text('Desktop'),
                backgroundColor: Colors.red,
              ),
              Chip(
                label: Text('Smartwatch'),
                backgroundColor: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
