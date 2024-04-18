import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class NoHeaderDialog extends StatelessWidget {
  const NoHeaderDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: AnimatedButton(
            text: 'No Header Dialog Box',
            color: Color.fromARGB(255, 7, 21, 151),
            pressEvent: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.noHeader,
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
                desc: 'No Header Dialog Box',
                buttonsTextStyle: const TextStyle(color: Colors.black),
                showCloseIcon: true,
                btnCancelOnPress: () {},
                btnOkOnPress: () {},
              ).show();
            },
          ),
        ),
      ),
    );
  }
}
