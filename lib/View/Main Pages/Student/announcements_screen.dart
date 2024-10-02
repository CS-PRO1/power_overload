import 'package:flutter/material.dart';
import 'package:power_overload/Shared/components/custom_appbar.dart';
import 'package:power_overload/Shared/components/news_card.dart';

class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'الإعلانات'),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => newsCard(context),
        shrinkWrap: true,
        itemCount: 10,
      ),
    );
  }
}
