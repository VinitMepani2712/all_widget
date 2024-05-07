import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile Example'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.star),
            title: Text('List Item 1'),
            subtitle: Text('Subtitle for Item 1'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Handle item tap
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('List Item 2'),
            subtitle: Text('Subtitle for Item 2'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
