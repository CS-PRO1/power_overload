import 'package:flutter/material.dart';

Widget digitInput(BuildContext context,
    {autofocus = false, TextEditingController? controller}) {
  return SizedBox(
    width: 35,
    height: 70,
    child: TextFormField(
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 15),
      maxLength: 1,
      maxLines: 1,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(5),
        counterText: '',
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2.0),
            borderRadius: BorderRadius.circular(10.0)),
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).primaryColor, width: 3.0),
            borderRadius: BorderRadius.circular(10.0)),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.redAccent, width: 2.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onChanged: (value) {
        nextFocus(context);
      },
    ),
  );
}

void nextFocus(BuildContext context) {
  FocusScope.of(context).nextFocus();
}
