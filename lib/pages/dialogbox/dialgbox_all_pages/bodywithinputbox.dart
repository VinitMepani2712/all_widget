import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class BodyWithInput extends StatelessWidget {
  const BodyWithInput({super.key});

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
            text: 'Body with Input',
            color: Colors.blueGrey,
            pressEvent: () {
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
            },
          ),
        ),
      ),
    );
  }
}
