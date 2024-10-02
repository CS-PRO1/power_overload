import 'dart:math';
import 'package:flutter/material.dart';
import 'package:power_overload/Shared/constants.dart';

Widget flowershape(BuildContext context, String text, {VoidCallback? ontap}) {
  return InkWell(
      splashColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 2,
                      offset: Offset(-3, 3))
                ],
                border: Border.all(color: green300, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: green400,
              ),
            ),
            Transform.rotate(
              angle: 45 * pi / 180,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: green200, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: green300,
                ),
              ),
            ),
            Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: green100,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: ontap);
}
