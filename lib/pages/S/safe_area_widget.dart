import 'package:flutter/material.dart';

class SafeAreaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('SafeArea Example'),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.blue, 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello, SafeArea!',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Show a Snackbar when the button is pressed
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Button clicked!'),
                      ),
                    );
                  },
                  child: Text('Click Me'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
