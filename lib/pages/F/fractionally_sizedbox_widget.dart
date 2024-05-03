import 'package:flutter/material.dart';


class FractionallySizedBoxWidet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FractionallySizedBox Widget Example'),
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
          width: 300,
          height: 300,
          child: FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 0.5,
            alignment: Alignment.center,
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Text(
                  'FractionallySizedBox Example',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
