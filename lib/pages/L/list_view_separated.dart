import 'package:flutter/material.dart';

class ListViewSeparatedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView.separated Example'),
        ),
        body: ListView.separated(
          itemCount: 10,
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 2,
              color: Colors.grey,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: const Icon(Icons.person),
              title: Text('Item $index'),
              subtitle: Text('Subtitle for Item $index'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Add onTap logic here
              },
            );
          },
        ),
      ),
    );
  }
}
