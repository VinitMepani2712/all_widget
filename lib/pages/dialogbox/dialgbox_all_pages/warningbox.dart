import 'package:all_widget/codepage/show_code_file.dart';
import 'package:all_widget/textstyle/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class WarningDialog extends StatelessWidget {
  const WarningDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Warning Dialog')),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 238, 130, 130),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  _showWarningDialog(context);
                },
                child: Text(
                  'Show Warning Dialog',
                  style: AppWidget.textStyle(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.black26,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodePage(
                      code: _warningDialogCode,
                    ),
                  ),
                );
              },
              child: Center(
                child: Text(
                  'Show Code',
                  style: AppWidget.textStyle(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showWarningDialog(BuildContext context) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.warning,
      borderSide: const BorderSide(
        color: Colors.yellow,
        width: 5,
      ),
      width: 500,
      buttonsBorderRadius: const BorderRadius.all(
        Radius.circular(2),
      ),
      dismissOnTouchOutside: true,
      dismissOnBackKeyPress: false,
      onDismissCallback: (type) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Dismissed by $type'),
          ),
        );
      },
      animType: AnimType.bottomSlide,
      title: 'Question',
      desc: 'Warning Dialog Box',
      buttonsTextStyle: const TextStyle(color: Colors.black),
      showCloseIcon: true,
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    ).show();
  }

  final String _warningDialogCode = '''
import 'package:all_widget/codepage/show_code_file.dart';
import 'package:all_widget/textstyle/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class WarningDialog extends StatelessWidget {
  const WarningDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Warning Dialog')),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 238, 130, 130),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  _showWarningDialog(context);
                },
                child: Text(
                  'Show Warning Dialog',
                  style: AppWidget.textStyle(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.black26,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CodePage(
                      code: _warningDialogCode,
                    ),
                  ),
                );
              },
              child: Center(
                child: Text(
                  'Show Code',
                  style: AppWidget.textStyle(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showWarningDialog(BuildContext context) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.warning,
      borderSide: const BorderSide(
        color: Colors.yellow,
        width: 5,
      ),
      width: 500,
      buttonsBorderRadius: const BorderRadius.all(
        Radius.circular(2),
      ),
      dismissOnTouchOutside: true,
      dismissOnBackKeyPress: false,
      onDismissCallback: (type) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Dismissed by (add dollar symbol here)type'),
          ),
        );
      },
      animType: AnimType.bottomSlide,
      title: 'Question',
      desc: 'Warning Dialog Box',
      buttonsTextStyle: const TextStyle(color: Colors.black),
      showCloseIcon: true,
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    ).show();
  }
  ''';
}
