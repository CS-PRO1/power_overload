import 'package:flutter/material.dart';
import 'package:power_overload/Shared/constants.dart';

Widget FloatButton({VoidCallback? onTap, IconData? icon}) {
  return Container(
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: 52.0,
        height: 52.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: green200,
        ),
        child: Icon(
          icon,
          color: green400,
          size: 25.0,
        ),
      ),
    ),
  );
}
