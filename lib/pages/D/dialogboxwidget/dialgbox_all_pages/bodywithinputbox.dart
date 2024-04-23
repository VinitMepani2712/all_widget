import 'package:all_widget/codepage/show_code_file.dart';
import 'package:all_widget/textstyle_support/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class BodyWithInput extends StatelessWidget {
  const BodyWithInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Show Body with input Dialog')),
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
                  _showbodyWithInputDialogCode(context);
                },
                child: Text(
                  'Show Body with input Dialog',
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
                      code: _bodyWithInputDialogCode,
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

  void _showbodyWithInputDialogCode(BuildContext context) {
    late AwesomeDialog dialog;
    dialog = AwesomeDialog(
      context: context,
      animType: AnimType.scale,
      dialogType: DialogType.info,
      borderSide: const BorderSide(
        color: Colors.green,
        width: 5,
      ),
      keyboardAware: true,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Form Data',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            Material(
              elevation: 0,
              color: Colors.blueGrey.withAlpha(40),
              child: TextFormField(
                autofocus: true,
                minLines: 1,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Title',
                  prefixIcon: Icon(Icons.text_fields),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Material(
              elevation: 0,
              color: Colors.blueGrey.withAlpha(40),
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.multiline,
                minLines: 2,
                maxLines: null,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Description',
                  prefixIcon: Icon(Icons.text_fields),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            AnimatedButton(
              isFixedHeight: false,
              color: Colors.black,
              text: 'Close',
              pressEvent: () {
                dialog.dismiss();
              },
            )
          ],
        ),
      ),
    )..show();
  }

  final String _bodyWithInputDialogCode = '''
import 'package:all_widget/codepage/show_code_file.dart';
import 'package:all_widget/textstyle/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class BodyWithInput extends StatelessWidget {
  const BodyWithInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Show Body with input Dialog')),
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
                  _showbodyWithInputDialogCode(context);
                },
                child: Text(
                  'Show Body with input Dialog',
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
                      code: _bodyWithInputDialogCode,
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

  void _showbodyWithInputDialogCode(BuildContext context) {
    late AwesomeDialog dialog;
    dialog = AwesomeDialog(
      context: context,
      animType: AnimType.scale,
      dialogType: DialogType.info,
      borderSide: const BorderSide(
        color: Colors.green,
        width: 5,
      ),
      keyboardAware: true,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Form Data',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            Material(
              elevation: 0,
              color: Colors.blueGrey.withAlpha(40),
              child: TextFormField(
                autofocus: true,
                minLines: 1,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Title',
                  prefixIcon: Icon(Icons.text_fields),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Material(
              elevation: 0,
              color: Colors.blueGrey.withAlpha(40),
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.multiline,
                minLines: 2,
                maxLines: null,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Description',
                  prefixIcon: Icon(Icons.text_fields),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            AnimatedButton(
              isFixedHeight: false,
              color: Colors.black,
              text: 'Close',
              pressEvent: () {
                dialog.dismiss();
              },
            )
          ],
        ),
      ),
    )..show();
  }
   ''';
}
