import 'package:flutter/material.dart';

class IndexStackWidget extends StatefulWidget {
  const IndexStackWidget({Key? key}) : super(key: key);

  @override
  _IndexStackWidgetState createState() => _IndexStackWidgetState();
}

class _IndexStackWidgetState extends State<IndexStackWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IndexedStack(
            index: currentIndex,
            alignment: Alignment.center,
            sizing: StackFit.loose,
            children: [
              Container(
                height: 100,
                color: Colors.blue,
                child: Center(
                    child: Text('Widget 1',
                        style: TextStyle(color: Colors.white))),
              ),
              Container(
                height: 100,
                color: Colors.green,
                child: Center(
                    child: Text('Widget 2',
                        style: TextStyle(color: Colors.white))),
              ),
              Container(
                height: 100,
                color: Colors.orange,
                child: Center(
                    child: Text('Widget 3',
                        style: TextStyle(color: Colors.white))),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentIndex = (currentIndex + 1) % 3;
          });
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
