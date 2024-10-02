import 'package:flutter/material.dart';
import 'package:power_overload/Shared/constants.dart';
Widget defaultButton({
  double width = 150,
  required String text,
  required VoidCallback function,
  double heigh = 60,
  double? textsize,
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[green400, green300, green100]),
    ),
    width: width,
    height: heigh,
    child: TextButton(
      onPressed: function,
      child: Text(
        text,
        style: TextStyle(fontSize: textsize),
      ),
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(Colors.white),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: StandardBorderRadius,
            //  side: BorderSide(color: Colors.white),
          ),
        ),
      ),
    ),
  );
}
