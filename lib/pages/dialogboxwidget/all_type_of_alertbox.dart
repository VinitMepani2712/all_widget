import 'package:all_widget/pages/dialogboxwidget/dialgbox_all_pages/alertdialog_widget.dart';
import 'package:all_widget/pages/dialogboxwidget/dialgbox_all_pages/autohidebox.dart';
import 'package:all_widget/pages/dialogboxwidget/dialgbox_all_pages/bodywithinputbox.dart';
import 'package:all_widget/pages/dialogboxwidget/dialgbox_all_pages/custombodybox.dart';
import 'package:all_widget/pages/dialogboxwidget/dialgbox_all_pages/errorbox.dart';
import 'package:all_widget/pages/dialogboxwidget/dialgbox_all_pages/infodialog.dart';
import 'package:all_widget/pages/dialogboxwidget/dialgbox_all_pages/noheaderbox.dart';
import 'package:all_widget/pages/dialogboxwidget/dialgbox_all_pages/sucessbox.dart';
import 'package:all_widget/pages/dialogboxwidget/dialgbox_all_pages/warningbox.dart';
import 'package:flutter/material.dart';

class AllDialogTypesPage extends StatelessWidget {
  AllDialogTypesPage({super.key});

  final List<Map<String, dynamic>> _widgetList = [
    {
      "text": "AlertDialog Box Widget",
      "widget": const AlertDialogBoxWidget(),
      "iconData": Icons.warning_outlined,
      "color": const Color.fromARGB(255, 255, 0, 0)
    },
    {
      "text": "Auto Hide Dialog Box",
      "widget": const AutoHideDialog(),
      "iconData": Icons.flutter_dash_rounded,
      "color": const Color.fromARGB(162, 73, 39, 224),
    },
    {
      "text": "Body With Input Dialog Box",
      "widget": const BodyWithInput(),
      "iconData": Icons.flutter_dash_rounded,
      "color": const Color.fromARGB(162, 73, 39, 224),
    },
    {
      "text": "Custom Body Dialog Box",
      "widget": const CustomBodyDialog(),
      "iconData": Icons.flutter_dash_rounded,
      "color": const Color.fromARGB(162, 73, 39, 224),
    },
    {
      "text": "Error Dialog Box",
      "widget": const ErrorDialog(),
      "iconData": Icons.error_outline,
      "color": const Color.fromARGB(255, 241, 28, 28),
    },
    {
      "text": "Info Dialog Box",
      "widget": const InfoDialog(),
      "iconData": Icons.info_outline,
      "color": const Color.fromARGB(162, 73, 39, 224),
    },
    {
      "text": " NoHeader Dialog Box",
      "widget": const NoHeaderDialog(),
      "iconData": Icons.flutter_dash_rounded,
      "color": const Color.fromARGB(162, 73, 39, 224),
    },
    {
      "text": "Success Dialog Box",
      "widget": const SuccessDialog(),
      "iconData": Icons.check_circle_outline,
      "color": const Color.fromARGB(255, 0, 255, 42),
    },
    {
      "text": "Warning Dialog Box",
      "widget": const WarningDialog(),
      "iconData": Icons.warning_amber_rounded,
      "color": const Color.fromARGB(255, 255, 0, 0),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Flutter All Dialog Box Widget',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
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
                style: TextStyle(
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
