import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:power_overload/Shared/constants.dart';

toast(String msg) {
  return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: green400,
      textColor: Colors.white,
      fontSize: 16.0);
}
