import 'package:flutter/material.dart';



class DropDownMenuWidget extends StatefulWidget {
  @override
  _DropDownMenuWidgetState createState() => _DropDownMenuWidgetState();
}

class _DropDownMenuWidgetState extends State<DropDownMenuWidget> {
  String selectedOption = 'None';

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;

    // Update the background color based on the selected option
    switch (selectedOption) {
      case 'Option 1':
        backgroundColor = Colors.red;
        break;
      case 'Option 2':
        backgroundColor = Colors.blue;
        break;
      case 'Option 3':
        backgroundColor = Colors.green;
        break;
      default:
        backgroundColor = Colors.white;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('DropdownMenu'),
      ),
      body: Container(
        color: backgroundColor, // Set the background color
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<String>(
                value: selectedOption,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedOption = newValue!;
                  });
                },
                items: <String>['None', 'Option 1', 'Option 2', 'Option 3']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
