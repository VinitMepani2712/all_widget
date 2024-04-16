import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Widget Example'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
          15,
          (index) {
            return Center(
              child: Container(
                color: Colors.transparent,
                margin: EdgeInsets.only(top: 25),
                width: 50,
                height: 50,
                child: Text(
                  'Item $index',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
