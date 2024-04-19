import 'package:all_widget/pages/appbarwidget/app_bar_all_pages/basic_appbar.dart';
import 'package:all_widget/pages/appbarwidget/app_bar_all_pages/bottom_nav_bar_widget.dart';
import 'package:all_widget/pages/appbarwidget/app_bar_all_pages/silver_app_bar.dart';
import 'package:all_widget/pages/appbarwidget/app_bar_all_pages/tab_bar.dart';

import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({super.key});

  final List<Map<String, dynamic>> _widgetList = [
    {
      "text": "Basic App Bar",
      "widget": const BasicAppBar(),
      "iconData": Icons.flutter_dash_sharp,
      "color": const Color.fromARGB(162, 73, 39, 224),
    },
    {
      "text": "Bottom Navigation Bar",
      "widget": const BottomNavigationAppBar(),
      "iconData": Icons.flutter_dash_sharp,
      "color": const Color.fromARGB(162, 73, 39, 224),
    },
    {
      "text": "Sliver App Bar",
      "widget": const SilverAppBar(),
      "iconData": Icons.flutter_dash_sharp,
      "color": const Color.fromARGB(162, 73, 39, 224),
    },
    {
      "text": "Tab App Bar",
      "widget": const TabAppBar(),
      "iconData": Icons.flutter_dash_sharp,
      "color": const Color.fromARGB(162, 73, 39, 224),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFE2EDF7), Color(0xFFB5C3D3)],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Flutter All App Bar Widget',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: _widgetList.length,
                  itemBuilder: (context, index) {
                    return _buildCard(
                      text: _widgetList[index]["text"],
                      iconData: _widgetList[index]["iconData"],
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => _widgetList[index]["widget"],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard({
    required String text,
    required IconData iconData,
    required VoidCallback onPressed,
  }) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
                color: Colors.blue,
                size: 30,
              ),
              const SizedBox(height: 10),
              Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
