import 'package:all_widget/components/codepage/show_code_file.dart';
import 'package:all_widget/components/textstyle_support/textstyle.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Success Dialog Box')),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 122, 206, 192),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  _showSuccessDialogCode(context);
                },
                child: Text(
                  'Success Dialog Box',
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
                      code: _successDialogCode,
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

  void _showSuccessDialogCode(BuildContext context) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.success,
      borderSide: const BorderSide(
        color: Colors.green,
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
      title: 'Success',
      desc: 'Success Dialog Box',
      buttonsTextStyle: const TextStyle(color: Colors.black),
      showCloseIcon: true,
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    ).show();
  }

  final String _successDialogCode = '''
import 'package:all_widget/codepage/show_code_file.dart';
import 'package:all_widget/textstyle/textstyle.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Success Dialog Box')),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 140, 124, 233),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  _showSuccessDialogCode(context);
                },
                child: Text(
                  'Success Dialog Box',
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
                      code: _successDialogCode,
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

  void _showSuccessDialogCode(BuildContext context) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.success,
      borderSide: const BorderSide(
        color: Colors.green,
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
            content: Text('Dismissed by ()Add Dollar sign here)type'),
          ),
        );
      },
      animType: AnimType.bottomSlide,
      title: 'Success',
      desc: 'Success Dialog Box',
      buttonsTextStyle: const TextStyle(color: Colors.black),
      showCloseIcon: true,
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    ).show();
  }


''';
}
