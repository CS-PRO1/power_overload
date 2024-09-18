import 'package:flutter/material.dart';
import 'package:power_overload/components.dart';

class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'الإعلانات'),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => buildNewsItem(context),
        shrinkWrap: true,
        itemCount: 10,
      ),
    );
  }
}
