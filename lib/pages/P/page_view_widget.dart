import 'package:flutter/material.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Page View"),
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.red,
            child: Center(child: Text("First Page")),
          ),
          Container(
            color: Colors.yellow,
            child: Center(child: Text("Second Page")),
          ),
          Container(
            color: Colors.blue,
            child: Center(child: Text("Third Page")),
          ),
        ],
      ),
    );
  }
}