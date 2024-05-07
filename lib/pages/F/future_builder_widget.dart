import 'package:flutter/material.dart';

class FutureBuilderWidget extends StatelessWidget {
  const FutureBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InteractiveViewer Example'),
      ),
      body: Center(
        child: InteractiveViewer(
          boundaryMargin: EdgeInsets.all(20.0),
          minScale: 0.5,
          maxScale: 2.0,
          constrained: true,
          child: Image.network(
            'https://www.stimulusco.com/wp-content/uploads/2021/03/flutter.png',
            width: 250,
            height: 250,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
