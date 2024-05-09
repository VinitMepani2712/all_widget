import 'package:all_widget/components/textstyle_support/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerWidget extends StatefulWidget {
  final Function(String) onDateSelected;

  DatePickerWidget({required this.onDateSelected});

  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
       String formatter = DateFormat('yyyy-MM-dd').format(picked);
      
      widget.onDateSelected(formatter);
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
        onPressed: () => _selectDate(context),
        icon: Icon(Icons.calendar_today),
        label: Text(
          'Select Date',
          style: AppWidget.timeTextStyle(),
        ),
      ),
    );
  }
}
