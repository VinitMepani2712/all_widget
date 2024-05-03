import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final Widget child;
  final String value;
  final Color color;
  final Color textColor;

  Badge({
    required this.child,
    required this.value,
    this.color = Colors.red,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            constraints: const BoxConstraints(
              minWidth: 25,
              minHeight: 25,
            ),
            child: Text(
              value,
              style: TextStyle(
                color: textColor,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}

class BadgeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Badge Example'),
        ),
        body: Center(
          child: Badge(
            value: '5',
            color: Colors.blue,
            textColor: Colors.white,
            child: const Icon(Icons.notifications, size: 100.0),
          ),
        ),
      ),
    );
  }
}
