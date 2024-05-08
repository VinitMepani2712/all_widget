import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SliderWidget extends StatefulWidget {
  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget>
    with SingleTickerProviderStateMixin {
  double _materialSliderValue = 0;
  double _cupertinoSliderValue = 0;
  RangeValues _rangeSliderValues = RangeValues(20, 80);
  double _discreteSliderValue = 0;
  double _verticalSliderValue = 0;
  double _discreteVerticalSliderValue = 0;

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Examples'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Horizontal'),
            Tab(text: 'Vertical'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildHorizontalSliders(),
          _buildVerticalSliders(),
        ],
      ),
    );
  }

  Widget _buildHorizontalSliders() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Material Slider Value: $_materialSliderValue',
            style: TextStyle(fontSize: 20),
          ),
          Slider(
            value: _materialSliderValue,
            min: 0,
            max: 100,
            divisions: 100,
            label: _materialSliderValue.round().toString(),
            onChanged: (value) {
              setState(() {
                _materialSliderValue = value;
              });
            },
          ),
          Divider(
            height: 100,
            thickness: 2,
            color: Colors.red,
            indent: 20,
            endIndent: 20,
          ),
          Text(
            'Cupertino Slider Value: ${_cupertinoSliderValue.toStringAsFixed(1)}',
            style: TextStyle(fontSize: 20),
          ),
          CupertinoSlider(
            value: _cupertinoSliderValue,
            min: 0,
            max: 100,
            divisions: 100,
            onChanged: (value) {
              setState(() {
                _cupertinoSliderValue = value;
              });
            },
          ),
          Divider(
            height: 100,
            thickness: 2,
            color: Colors.red,
            indent: 20,
            endIndent: 20,
          ),
          Text(
            'Range Slider Values: ${_rangeSliderValues.start.toStringAsFixed(1)} - ${_rangeSliderValues.end.toStringAsFixed(1)}',
            style: TextStyle(fontSize: 20),
          ),
          RangeSlider(
            values: _rangeSliderValues,
            min: 0,
            max: 100,
            divisions: 100,
            labels: RangeLabels(
              _rangeSliderValues.start.round().toString(),
              _rangeSliderValues.end.round().toString(),
            ),
            onChanged: (values) {
              setState(() {
                _rangeSliderValues = values;
              });
            },
          ),
          Divider(
            height: 100,
            thickness: 2,
            color: Colors.red,
            indent: 20,
            endIndent: 20,
          ),
          Text(
            'Discrete Slider Value: $_discreteSliderValue',
            style: TextStyle(fontSize: 20),
          ),
          Slider(
            value: _discreteSliderValue,
            min: 0,
            max: 100,
            divisions: 10,
            label: _discreteSliderValue.round().toString(),
            onChanged: (value) {
              setState(() {
                _discreteSliderValue = value;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildVerticalSliders() {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Vertical Slider Value: $_verticalSliderValue',
                style: TextStyle(fontSize: 20),
              ),
              RotatedBox(
                quarterTurns: 3,
                child: Slider(
                  value: _verticalSliderValue,
                  min: 0,
                  max: 100,
                  divisions: 100,
                  label: _verticalSliderValue.round().toString(),
                  onChanged: (value) {
                    setState(() {
                      _verticalSliderValue = value;
                    });
                  },
                ),
              ),
              Divider(
                height: 50,
                thickness: 2,
                color: Colors.red,
                indent: 20,
                endIndent: 20,
              ),
              Text(
                'Discrete Vertical Slider Value: $_discreteVerticalSliderValue',
                style: TextStyle(fontSize: 20),
              ),
              RotatedBox(
                quarterTurns: 3,
                child: Slider(
                  value: _discreteVerticalSliderValue,
                  min: 0,
                  max: 100,
                  divisions: 10,
                  label: _discreteVerticalSliderValue.round().toString(),
                  onChanged: (value) {
                    setState(() {
                      _discreteVerticalSliderValue = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
