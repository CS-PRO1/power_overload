import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:power_overload/constants.dart';

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
        foregroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: StandardBorderRadius,
            side: BorderSide(color: Colors.white),
          ),
        ),
      ),
    ),
  );
}

Widget myTextField(
    TextEditingController controller, BuildContext context, String label,
    {Icon? prefixIcon,
    int height = 1,
    int maxLines = 1,
    Widget? postfixicon,
    bool obscureText = false,
    String? Function(String?)? validator,
    TextInputType? keyboardType,
    bool autofocus = false}) {
  return TextFormField(
    autofocus: autofocus,
    minLines: height,
    maxLines: maxLines,
    controller: controller,
    validator: validator,
    keyboardType: keyboardType,
    obscureText: obscureText,
    decoration: InputDecoration(
      label: Text(label),
      prefixIcon: prefixIcon,
      suffixIcon: postfixicon,
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 2.0),
          borderRadius: StandardBorderRadius),
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: Theme.of(context).primaryColor, width: 3.0),
        borderRadius: ActiveBorderRadius,
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.redAccent, width: 2.0),
        borderRadius: ActiveBorderRadius,
      ),
    ),
  );
}

Widget NumInput(BuildContext context,
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

AppBar MyAppBar(
    {required String title, List<Widget>? actions, Widget? leading}) {
  return AppBar(
    leading: leading,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[green400, green100]),
      ),
    ),
    scrolledUnderElevation: 0,
    centerTitle: true,
    title: Text(title),
    actions: actions,
  );
}

Widget AppBarPopupMenu() {
  return PopupMenuButton(
      icon: const Icon(Icons.menu),
      itemBuilder: (context) => [
            PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.chat_bubble_2,
                      color: green400,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        'دردشة',
                        style: TextStyle(
                          color: green500,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  //TODO
                }),
            PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.question_circle,
                      color: green400,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        'الشكاوى',
                        style: TextStyle(
                          color: green500,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  //TODO
                }),
            PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: green400,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        'الاعدادات',
                        style: TextStyle(
                          color: green500,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  //TODO
                }),
            PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.info_outline_rounded,
                      color: green400,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        'حول',
                        style: TextStyle(
                          color: green500,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  //TODO
                })
          ]);
}

Widget MyFloatButton({VoidCallback? onTap}) {
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
          Icons.add,
          color: green400,
          size: 25.0,
        ),
      ),
    ),
  );
}

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
