import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class AutoHideDialog extends StatelessWidget {
  const AutoHideDialog({super.key});

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
            text: 'Auto Hide Dialog Box',
            color: Colors.brown,
            pressEvent: () {
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
            },
          ),
        ),
      ),
    );
  }
}
