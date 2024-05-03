import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool _item1Checked = false;
  bool _item2Checked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0, right: 10, left: 10),
        child: Column(
          children: [
            CheckboxListTile(
              value: _item1Checked,
              onChanged: (value) {
                setState(() {
                  _item1Checked = value!;
                });
              },
              title: Text('Item 1'),
              subtitle: Text('Subtitle for Item 1'),
              secondary: Icon(Icons.check),
              activeColor: Colors.green,
              checkColor: Colors.white,
            ),
            CheckboxListTile(
              value: _item2Checked,
              onChanged: (value) {
                setState(() {
                  _item2Checked = value!;
                });
              },
              title: Text('Item 2'),
              subtitle: Text('Subtitle for Item 2'),
              secondary: Icon(Icons.check),
              activeColor: Colors.green,
              checkColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
