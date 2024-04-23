import 'package:flutter/material.dart';

class GridViewBuilderWidget extends StatelessWidget {
    final List<String> items = List.generate(10, (index) => 'Item $index');

   GridViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.builder Widget Example'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                items[index],
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
