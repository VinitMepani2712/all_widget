import 'package:all_widget/pages/A/all_process_Indicator_widget/all_process_Indicator_page_all_widget/circular_progress_indicator.dart';
import 'package:all_widget/pages/A/all_process_Indicator_widget/all_process_Indicator_page_all_widget/custom_progress_indicator.dart';
import 'package:all_widget/pages/A/all_process_Indicator_widget/all_process_Indicator_page_all_widget/linear_progress_indicator.dart';
import 'package:flutter/material.dart';

import '../../../components/textstyle_support/textstyle.dart';

class AllProcessIndicatorPage extends StatelessWidget {
  AllProcessIndicatorPage({super.key});

  final List<Map<String, dynamic>> _widgetList = [
    {
      "text": "Circular Progress Indicator",
      "widget": const CircularProgressIndicatorPage(),
      "iconData": Icons.circle,
    },
    {
      "text": "Linear Progress Indicator",
      "widget": const LinearProgressIndicatorPage(),
      "iconData": Icons.linear_scale_outlined,
    },
    {
      "text": "Custom Loding Indicator",
      "widget": const CustomProgressIndicator(),
      "iconData": Icons.dashboard_customize_outlined,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blueAccent),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: Text('Flutter All Progrss Indicator'),
        titleTextStyle: AppWidget.headerTextStyle(),
      ),
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
