// import 'package:flutter/material.dart';
// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

// class DateRangePickerWidget extends StatefulWidget {
//   final Function(DateTime) onDateRangeSelected;

//   DateRangePickerWidget({required this.onDateRangeSelected});

//   @override
//   _DateRangePickerWidgetState createState() => _DateRangePickerWidgetState();
// }

// class _DateRangePickerWidgetState extends State<DateRangePickerWidget> {
//   String _selectedDateRange = 'No date range selected';

//   Future<void> _selectDateRange(BuildContext context) async {
//     DatePicker.showDatePicker(
//       context,
//       showTitleActions: true,
//       minTime: DateTime(2000, 1, 1),
//       maxTime: DateTime(2101, 12, 31),
//       onConfirm: (date) {
//         setState(() {
//           _selectedDateRange =
//               'Selected date range: ${date.year}-${date.month}-${date.day}';
//         });
//         widget.onDateRangeSelected(date);
//       },
//       currentTime: DateTime.now(),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () => _selectDateRange(context),
//       child: Text('Select Date Range'),
//     );
//   }
// }
