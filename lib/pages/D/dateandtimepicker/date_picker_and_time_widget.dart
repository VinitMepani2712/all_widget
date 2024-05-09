import 'package:all_widget/pages/D/dateandtimepicker/date_picker.dart';
import 'package:all_widget/pages/D/dateandtimepicker/time_picker.dart';
import 'package:flutter/material.dart';

class DateAndTimePickerWidget extends StatefulWidget {
  @override
  _DateAndTimePickerWidgetState createState() =>
      _DateAndTimePickerWidgetState();
}

class _DateAndTimePickerWidgetState extends State<DateAndTimePickerWidget> {
  String? _selectedDate;
  TimeOfDay? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date and Time Picker Examples'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: DatePickerWidget(
                onDateSelected: (String date) {
                  setState(() {
                    _selectedDate = date;
                  });
                },
              ),
            ),
            SizedBox(height: 20),
            _selectedDate != null
                ? Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 235, 222, 222),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text('Selected Date: $_selectedDate')))
                : Container(), //
            SizedBox(height: 20),
            TimePickerWidget(
              onTimeSelected: (TimeOfDay time) {
                setState(() {
                  _selectedTime = time;
                });
              },
            ),
            SizedBox(height: 20),
            _selectedTime != null
                ? Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 235, 222, 222),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                          'Selected Time: ${_selectedTime!.hour}:${_selectedTime!.minute}'),
                    ),
                  )
                : Container(), //
          ],
        ),
      ),
    );
  }
}
