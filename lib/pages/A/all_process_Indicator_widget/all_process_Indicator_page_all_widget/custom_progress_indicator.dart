import 'package:all_widget/pages/A/all_process_Indicator_widget/all_process_Indicator_page_all_widget/show_code.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

const List<Color> _kDefaultRainbowColors = [
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.green,
  Colors.blue,
  Colors.indigo,
  Colors.purple,
];

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({super.key});

  _showSingleAnimationDialog(
    BuildContext context,
    Indicator indicator,
    bool showPathBackground,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: false,
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(indicator.toString().split('.').last),
            ),
            body: Padding(
              padding: const EdgeInsets.all(64),
              child: Center(
                child: LoadingIndicator(
                  indicatorType: indicator,
                  colors: _kDefaultRainbowColors,
                  strokeWidth: 4.0,
                  pathBackgroundColor:
                      showPathBackground ? Colors.black45 : null,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Custom Loading'), actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            onSelected: (value) {
              switch (value) {
                case 'showCode':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShowCodePage()),
                  );
              }
            },
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(
                value: 'showCode',
                child: Text('Show Code'),
              ),
            ],
          ),
        ]),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.5,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => _showSingleAnimationDialog(
                context,
                Indicator.values[index],
                false,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        Indicator.values[index].toString().split('.').last,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: LoadingIndicator(
                        colors: _kDefaultRainbowColors,
                        indicatorType: Indicator.values[index],
                        strokeWidth: 3,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '${index + 1}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: Indicator.values.length,
        ),
      );
}

