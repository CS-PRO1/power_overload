import 'package:flutter/material.dart';
import 'package:power_overload/Shared/constants.dart';
import 'package:flutter/cupertino.dart';

AppBar customAppBar(
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
            menuItem(context,
                icon: CupertinoIcons.chat_bubble_2,
                text: 'دردشة',
                onTap: () {}),
            menuItem(context,
                icon: CupertinoIcons.exclamationmark_circle,
                text: 'الشكاوى',
                onTap: () => Navigator.of(context).pushNamed('/complaints')),
            menuItem(context,
                icon: Icons.settings_outlined, text: 'الإعدادات', onTap: () {}),
            menuItem(context,
                icon: Icons.info_outline, text: 'حول', onTap: () {}),
          ]);
}

PopupMenuItem menuItem(BuildContext context,
    {required IconData icon,
    required String text,
    required VoidCallback onTap}) {
  return PopupMenuItem(
    child: Row(
      children: [
        Icon(
          icon,
          color: green400,
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          child: Text(
            text,
            style: TextStyle(
              color: green500,
              fontWeight: FontWeight.bold,
              fontSize: 19,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
