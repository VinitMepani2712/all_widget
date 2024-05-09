import 'package:flutter/material.dart';

import '../../../components/textstyle_support/textstyle.dart';

class TimePickerWidget extends StatefulWidget {
  final Function(TimeOfDay) onTimeSelected;

  TimePickerWidget({required this.onTimeSelected});

  @override
  _TimePickerWidgetState createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  late TimeOfDay? _selectedTime;

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        _selectedTime = picked;
      });
      widget.onTimeSelected(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 206, 204, 204),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton.icon(
        style: ButtonStyle(),
        onPressed: () => _selectTime(context),
        icon: Icon(Icons.access_time),
        label: Text(
          'Select Time',
          style: AppWidget.timeTextStyle(),
        ),
      ),
    );
  }
}
