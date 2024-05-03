import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card Widget Example'),
        ),
        body: Center(
          child: Card(
            color: Color.fromARGB(255, 134, 129, 136),
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            margin: const EdgeInsets.all(20.0),
            clipBehavior: Clip.hardEdge,
            semanticContainer: false,
            borderOnForeground: true,
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text(
                      'Vinit Mepani',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('vinitmepani2712@gmail.com',
                        style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'This is an example of a Card widget in Flutter. We can customize its appearance using various attributes.',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ), // Draw shape border above children
          ),
        ),
      ),
    );
  }
}
