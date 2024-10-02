import 'package:flutter/material.dart';
import 'package:power_overload/Shared/components/default_button.dart';
import 'package:power_overload/Shared/components/default_textfield.dart';
import 'package:power_overload/Shared/constants.dart';

Future complaintsDialog(
    BuildContext context, TextEditingController complaints) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: green100,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "أرسل شكوى",
                style: TextStyle(fontSize: 25, color: green300),
              ),
              //SizedBox(height: 20),
              defaultTextField(
                complaints,
                context,
                'نص الشكوى : ',
                prefixIcon: null,
                obscureText: false,
                height: 5,
                maxLines: 6,
              ),
              defaultButton(function: () {}, text: 'إرسال')
            ],
          ),
        ),
      );
    },
  );
}
