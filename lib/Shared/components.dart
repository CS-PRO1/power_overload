import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
    foregroundColor: green500,
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
          Icons.add_comment,
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

Widget buildNewsItem(context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      surfaceTintColor: green100,
      clipBehavior: Clip.antiAlias,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Image.asset('assets/logo.png',
                errorBuilder: (context, error, stackTrace) =>
                    Image.asset('images/fallback/other.jpg')),
            Container(
              height: 2,
              color: green200,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text('إعلان مهم',
                        style: Theme.of(context).textTheme.titleLarge),
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('البيتزا اطيب اكلة في الكون',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              )),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Text(
                          '2024/04/22',
                          textAlign: TextAlign.right,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

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

Future complaintsDialog(BuildContext context, TextEditingController complaints){
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
              myTextField(
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