import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle textStyle() {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontFamily: 'Roboto',
    );
  }

  static TextStyle headerTextStyle() {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.blueAccent,
      fontFamily: 'Roboto',
    );
  }

  static TextStyle timeTextStyle() {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w100,
      color: Color.fromARGB(255, 255, 255, 255),
      fontFamily: 'Roboto',
    );
  }
}
