import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  CustomListItem(
      {required this.title, required this.subtitle, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: IconButton(
        icon: Icon(Icons.more_vert),
        onPressed: () {
          // Add your onPressed logic here
        },
      ),
    );
  }
}

class ListViewCustomWidget extends StatelessWidget {
  const ListViewCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom List Item Example')),
      body: ListView(
        children: <Widget>[
          CustomListItem(
            title: 'Flutter',
            subtitle: 'Build beautiful native apps',
            icon: Icons.android,
          ),
          CustomListItem(
            title: 'Dart',
            subtitle: 'Powerful, efficient language',
            icon: Icons.code,
          ),
          CustomListItem(
            title: 'Widgets',
            subtitle: 'Compose your UI with ease',
            icon: Icons.widgets,
          ),
        ],
      ),
    );
  }
}
