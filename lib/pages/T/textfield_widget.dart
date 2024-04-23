import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
   TextFieldWidget({super.key});

 final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Widget Example'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Enter your text',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Access the entered text when the button is pressed
          String enteredText = _controller.text;
          print('Entered text: $enteredText');
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
