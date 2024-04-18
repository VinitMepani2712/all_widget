import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class CustomBodyDialog extends StatelessWidget {
  const CustomBodyDialog({super.key});

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
            text: 'Custom Body Dialog',
            color: Colors.blueGrey,
            pressEvent: () {
              AwesomeDialog(
                context: context,
                animType: AnimType.scale,
                dialogType: DialogType.info,
                
                borderSide: const BorderSide(
                  color: Colors.green,
                  width: 5,
                ),
                width: 500,
                buttonsBorderRadius: const BorderRadius.all(
                  Radius.circular(2),
                ),
                body: const Center(
                  child: Text(
                    'Write you information here',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                title: 'This is Ignored',
                desc: 'This is also Ignored',
              ).show();
            },
          ),
        ),
      ),
    );
  }
}
