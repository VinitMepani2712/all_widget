import 'package:flutter/material.dart';
// import 'package:flutter_toggle_buttons/flutter_toggle_buttons.dart';

class SegmentedButtonWidget extends StatefulWidget {
  @override
  _SegmentedButtonWidgetState createState() => _SegmentedButtonWidgetState();
}

class _SegmentedButtonWidgetState extends State<SegmentedButtonWidget> {
  String _selectedIndex = " ";

  void _handleIndexChanged(String index) {
    setState(() {
      _selectedIndex = index;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('You Choose: $_selectedIndex'),
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
        title: Text('Segmented Button Example'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SegmentedButton(
              text: "Home",
              icon: Icons.home,
              index: "Home",
              selectedIndex: _selectedIndex,
              onPressed: _handleIndexChanged,
            ),
            SegmentedButton(
              text: "Work",
              icon: Icons.work,
              index: "Work",
              selectedIndex: _selectedIndex,
              onPressed: _handleIndexChanged,
            ),
            SegmentedButton(
              text: "School",
              icon: Icons.school,
              index: "School",
              selectedIndex: _selectedIndex,
              onPressed: _handleIndexChanged,
            ),
          ],
        ),
      ),
    );
  }
}

class SegmentedButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final String index;
  final String selectedIndex;
  final Function(String) onPressed;

  SegmentedButton({
    required this.icon,
    required this.text,
    required this.index,
    required this.selectedIndex,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed(index);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: index == selectedIndex ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: index == selectedIndex ? Colors.white : Colors.black,
            ),
            SizedBox(width: 5),
            Text(
              text,
              style: TextStyle(
                color: index == selectedIndex ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
