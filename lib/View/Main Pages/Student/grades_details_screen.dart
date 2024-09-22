import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:power_overload/components.dart';
import 'package:power_overload/constants.dart';

class GradesDetailsScreen extends StatelessWidget {
  GradesDetailsScreen({super.key});
  List page_info = [
    {'title': 'الاختبارات الشفهية والوظائف', 'mark': 196, 'max': 200},
    {'title': 'الاختبارات الشهرية', 'mark': 134, 'max': 200},
    {'title': 'الامتحان', 'mark': 179, 'max': 200},
    {'title': 'المجموع', 'mark': 509, 'max': 600},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green50,
      appBar: MyAppBar(
        title: 'مادة الرياضيات',
        leading: AppBarPopupMenu(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
                height: 175,
                width: 175,
                child: flowershape(context, 'الفصل الأول')),
            GridView.count(
              crossAxisCount: 2,
              childAspectRatio: .7,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisSpacing: 10,
              mainAxisSpacing: 5,
              children: List.generate(page_info.length,
                  (index) => PercentCircle(context, page_info[index])),
            ),
          ],
        ),
      ),
    );
  }

  Widget PercentCircle(BuildContext context, Map page_info) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: CircularPercentIndicator(
        radius: 75,
        lineWidth: 30,
        percent: page_info['mark'] / page_info['max'],
        progressColor: green400,
        arcType: ArcType.FULL,
        arcBackgroundColor: green100,
        animation: true,
        center: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              page_info['mark'].toString(),
              style: TextStyle(fontSize: 20),
            ),
            Container(
              height: 1.5,
              width: 50,
              color: Colors.black,
            ),
            Text(
              page_info['max'].toString(),
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        animationDuration: 1500,
        curve: Curves.easeInOut,
        footer: Text(
          page_info['title']!,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
