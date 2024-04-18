import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class InfoDialog extends StatelessWidget {
  const InfoDialog({super.key});

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
            text: 'Info Dialog Box',
            color: Colors.green,
            pressEvent: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.info,
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
                headerAnimationLoop: false,
                animType: AnimType.bottomSlide,
                title: 'INFO',
                desc:
                    'Info Dialog Box \n This box can be close by touching outside',
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
