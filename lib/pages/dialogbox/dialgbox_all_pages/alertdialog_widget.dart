import 'package:flutter/material.dart';

class AlertDialogBoxWidget extends StatelessWidget {
  const AlertDialogBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(
                    'Alert',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  icon: Icon(Icons.warning_amber),
                  iconColor: Colors.red,
                  content: Text('This is an example of an alert dialog.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                          width: 50,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 177, 177, 177),
                          ),
                          child: Center(child: Text('Close'))),
                    ),
                  ],
                );
              },
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              'Show Alert',
            ),
          ),
        ),
      ),
    );
  }
}


