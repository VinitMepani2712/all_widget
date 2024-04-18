
import 'package:all_widget/pages/dialogbox/dialgbox_all_pages/errorbox.dart';
import 'package:all_widget/pages/dialogbox/dialgbox_all_pages/infodialog.dart';
import 'package:all_widget/pages/dialogbox/dialgbox_all_pages/sucessbox.dart';
import 'package:all_widget/pages/dialogbox/dialgbox_all_pages/warningbox.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({super.key});

  final List<Map<String, dynamic>> _widgetList = [
    {
      "text": "Basic App Bar",
      "widget": const InfoDialog(),
      "iconData": Icons.info_outline,
      "color": Color.fromARGB(162, 73, 39, 224),
    },
    {
      "text": "Bottom Navigation Bar",
      "widget": const WarningDialog(),
      "iconData": Icons.warning_amber_rounded,
      "color": Color.fromARGB(255, 255, 0, 0),
    },
    {
      "text": "Sliver App Bar",
      "widget": const ErrorDialog(),
      "iconData": Icons.error_outline,
      "color": Color.fromARGB(255, 241, 28, 28),
    },
    {
      "text": "Collapsed App Bar",
      "widget": const SuccessDialog(),
      "iconData": Icons.check_circle_outline,
      "color": Color.fromARGB(255, 0, 255, 42),
    },
     {
      "text": "Tab App Bar",
      "widget": const SuccessDialog(),
      "iconData": Icons.check_circle_outline,
      "color": Color.fromARGB(255, 0, 255, 42),
    },
  
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter All Dialog Box List',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0)),
          ),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: _widgetList.length,
          itemBuilder: (context, index) {
            return _buildTextButton(
              text: _widgetList[index]["text"],
              iconData: _widgetList[index]["iconData"],
              color: _widgetList[index]["color"],
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
    );
  }

  Widget _buildTextButton({
    required String text,
    required IconData iconData,
    required VoidCallback onPressed,
    required Color color,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: SizedBox(
        width: 180,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              width: double.infinity,
              height: double.infinity,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconData,
                  color: color,
                  size: 30,
                ),
                const SizedBox(height: 10),
                Center(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: "Times New Roman",
                    ),
                  ),
                ),
              ],
            ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onPressed,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
