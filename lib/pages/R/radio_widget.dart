import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RadioButtonWidget extends StatefulWidget {
  @override
  _RadioButtonWidgetState createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  String? _selectedValue;

  void _handleRadioValueChange(String? value) {
    setState(() {
      _selectedValue = value;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('You Choose: $_selectedValue'),
        duration: Duration(seconds: 1),
        showCloseIcon: true,
        closeIconColor: Colors.black,
        backgroundColor: Colors.lightGreen,
        elevation: 5.5,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button Example'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Radio(
                      value: "Burger",
                      groupValue: _selectedValue,
                      onChanged: _handleRadioValueChange,
                    ),
                    Text('Burger'),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(FontAwesomeIcons.burger, color: Colors.orange),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: "Pizza",
                      groupValue: _selectedValue,
                      onChanged: _handleRadioValueChange,
                    ),
                    Text('Pizza'),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(FontAwesomeIcons.pizzaSlice, color: Colors.red),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: "Soft Drinks",
                      groupValue: _selectedValue,
                      onChanged: _handleRadioValueChange,
                    ),
                    Text('Drinks'),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(FontAwesomeIcons.martiniGlass,
                        color: const Color.fromARGB(255, 238, 227, 131)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
