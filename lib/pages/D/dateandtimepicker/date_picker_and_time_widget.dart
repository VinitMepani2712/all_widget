import 'package:all_widget/pages/D/dateandtimepicker/date_picker.dart';
// import 'package:all_widget/pages/D/dateandtimepicker/date_range_widget.dart';
import 'package:all_widget/pages/D/dateandtimepicker/time_picker.dart';
import 'package:flutter/material.dart';

class DateAndTimePickerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Date and Time Picker Examples'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DatePickerWidget(
                onDateSelected: (DateTime date) {
                  print('Selected Date: $date');
                },
              ),
              SizedBox(height: 20),
              TimePickerWidget(
                onTimeSelected: (TimeOfDay time) {
                  print('Selected Time: ${time.hour}:${time.minute}');
                },
              ),
              SizedBox(height: 20),
              // DateRangePickerWidget(
              //   onDateRangeSelected: (DateTime date) {
              //     print('Selected Date Range: $date');
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
