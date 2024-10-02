import 'package:flutter/material.dart';
import 'package:power_overload/Shared/constants.dart';

Widget sRadio({
  bool isChecked = true,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'الفصل الاول',
          style: TextStyle(color: green300),
        ),
        Radio(
            activeColor: green400,
            value: (true),
            groupValue: isChecked,
            onChanged: (val) {
              isChecked = val!;
            }),
        SizedBox(
          width: 10.0,
        ),
        Text(
          'الفصل الثاني',
          style: TextStyle(color: green300),
        ),
        Radio(
            activeColor: green400,
            value: (false),
            groupValue: isChecked,
            onChanged: (val) {
              isChecked = val!;
            })
      ],
    );

class statefull extends StatefulWidget {
  const statefull({super.key});

  @override
  State<statefull> createState() => check();
}

class check extends State<statefull> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            activeColor: green400,
            value: checked,
            onChanged: (value) {
              setState(() {
                checked = value!;
              });
            }),
        //Text(text.tr, style: TextStyle(color: Theme.of(context).primaryColor)),
      ],
    );
  }
}


