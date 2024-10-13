import 'package:flutter/material.dart';
import 'package:power_overload/Shared/components/custom_appbar.dart';
import 'package:power_overload/Shared/components/date_picker.dart';
import 'package:power_overload/Shared/components/default_button.dart';
import 'package:power_overload/Shared/components/default_textfield.dart';

class RequestPermissionScreen extends StatelessWidget {
  RequestPermissionScreen({super.key});
  TextEditingController _reasoncontroller = new TextEditingController();
  TextEditingController _notescontroller =
      new TextEditingController(text: 'وقت الطلب:');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'طلب إذن'),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    defaultTextField(
                        _reasoncontroller, context, ' سبب طلب الإذن:'),
                    SizedBox(
                      height: 50.0,
                    ),
                    datePicker(context),
                    SizedBox(
                      height: 50.0,
                    ),
                    defaultTextField(_notescontroller, context, 'ملاحظة: ',
                        height: 5, maxLines: 7),
                    SizedBox(
                      height: 50.0,
                    ),
                    defaultButton(text: 'تم', function: () {}),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
