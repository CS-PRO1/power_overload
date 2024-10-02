import 'package:flutter/material.dart';
import 'package:power_overload/Shared/constants.dart';

Widget datePicker(BuildContext context) {
  DateTime _dateTime = DateTime.now();
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
    ).then((value) {
      _dateTime = value!;
    });
  }

  return SizedBox(
    width: 200,
    child: Card(
      color: bglight,
      elevation: 1,
      shape: LinearBorder.bottom(side: BorderSide(color: green400, width: 2)),
      child: InkWell(
        onTap: _showDatePicker,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _dateTime.year.toString() +
                    '/' +
                    _dateTime.month.toString() +
                    '/' +
                    _dateTime.day.toString(),
                style: TextStyle(fontSize: 20),
              ),
              Icon(Icons.calendar_month_outlined),
            ],
          ),
        ),
      ),
    ),
  );
}
