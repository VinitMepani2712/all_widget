import 'package:all_widget/components/codepage/show_code_file.dart';
import 'package:all_widget/components/textstyle_support/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class AutoHideDialog extends StatelessWidget {
  const AutoHideDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Auto Hide Dialog')),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 130, 236, 103),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  _showAutoHiddenDialogCode(context);
                },
                child: Text(
                  'Show Auto Hide Dialog',
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
                      code: _autoHiddenDialogCode,
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

  void _showAutoHiddenDialogCode(BuildContext context) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.infoReverse,
      autoHide: const Duration(seconds: 2),
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
      animType: AnimType.scale,
      title: 'Auto Hide Dialog',
      desc: 'AutoHide after 2 seconds',
      buttonsTextStyle: const TextStyle(color: Colors.black),
      showCloseIcon: true,
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    ).show();
  }

  final String _autoHiddenDialogCode = '''
import 'package:all_widget/codepage/show_code_file.dart';
import 'package:all_widget/textstyle/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';


class AutoHideDialog extends StatelessWidget {
  const AutoHideDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Auto Hide Dialog')),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 130, 236, 103),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  _showAutoHiddenDialogCode(context);
                },
                child: Text(
                  'Show Auto Hide Dialog',
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
                      code: _autoHiddenDialogCode,
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

  void _showAutoHiddenDialogCode(BuildContext context) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.infoReverse,
      autoHide: const Duration(seconds: 2),
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
            content: Text('Dismissed by (Add dollar symbol here)type'),
          ),
        );
      },
      animType: AnimType.scale,
      title: 'Auto Hide Dialog',
      desc: 'AutoHide after 2 seconds',
      buttonsTextStyle: const TextStyle(color: Colors.black),
      showCloseIcon: true,
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    ).show();
  }
''';
}
