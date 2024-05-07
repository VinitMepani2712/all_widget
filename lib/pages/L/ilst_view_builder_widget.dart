import 'package:flutter/material.dart';



class ListViewBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.builder Example'),
      ),
      body: ListView.builder(
        itemCount: 100, // Example: A list with 100 items
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Item $index'),
            subtitle: Text('Subtitle for Item $index'),
            leading: Icon(Icons.star),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Handle item tap
            },
          );
        },
      ),
    );
  }
}
