import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Divider'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Horizontal'),
              Tab(text: 'Vertical'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Horizontal Divider Tab
            Column(
              children: [
                ListTile(
                  title: Text('Item 1'),
                ),
                Divider(
                  color: Colors.red,
                  height: 30,
                  thickness: 4,
                  indent: 32,
                  endIndent: 32,
                ), // Simple horizontal divider
                ListTile(
                  title: Text('Item 2'),
                ),
                Divider(
                  color: Colors.red,
                  height: 30,
                  thickness: 4,
                  indent: 10,
                  endIndent: 10,
                ), // Another horizontal divider
                ListTile(
                  title: Text('Item 3'),
                ),
                Divider(
                  color: Colors.red,
                  height: 30,
                  thickness: 4,
                  indent: 32,
                  endIndent: 32,
                ),
              ],
            ),
            // Vertical Divider Tab
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          child: Text('Item 1'),
                        ),
                        VerticalDivider(
                          color: Colors.blue,
                          width: 30,
                          thickness: 4,
                          indent: 10,
                          endIndent: 10,
                        ),
                        Container(
                          width: 50,
                          child: Text('Item 2'),
                        ),
                        VerticalDivider(
                          color: Colors.blue,
                          width: 30,
                          thickness: 4,
                          indent: 10,
                          endIndent: 10,
                        ),
                        Container(
                          width: 50,
                          child: Text('Item 3'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
