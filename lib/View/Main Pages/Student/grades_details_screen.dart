import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:power_overload/Shared/components.dart';
import 'package:power_overload/Shared/constants.dart';

class GradesDetailsScreen extends StatelessWidget {
  GradesDetailsScreen({super.key});
  List page_info = [
    {'title': 'الاختبارات الشفهية والوظائف', 'mark': 80, 'max': 200},
    {'title': 'الاختبارات الشهرية', 'mark': 134, 'max': 200},
    {'title': 'الامتحان', 'mark': 179, 'max': 200},
    {'title': 'المجموع', 'mark': 509, 'max': 600},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green50,
      appBar: MyAppBar(
        title: 'العلامات',
        leading: AppBarPopupMenu(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                child: Column(
              children: [
                Text(
                  'المادة: الرياضيات',
                  style: TextStyle(
                      fontSize: 20,
                      color: green400,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  color: Colors.grey,
                  height: 1.5,
                  width: 200,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'الفصل: الأول',
                  style: TextStyle(
                      fontSize: 20,
                      color: green400,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
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

  Widget percentLine(BuildContext context, Map page_info) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: LinearProgressIndicator(
        backgroundColor: green100,
        color: page_info['mark'] / page_info['max'] < 0.4
            ? Colors.redAccent
            : green400,
        value: page_info['mark'] / page_info['max'],
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }

  Widget PercentCircle(BuildContext context, Map page_info) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircularPercentIndicator(
        radius: 75,
        lineWidth: 5,
        percent: page_info['mark'] / page_info['max'],
        progressColor: page_info['mark'] / page_info['max'] < 0.4
            ? Colors.redAccent
            : green400,
        arcType: ArcType.HALF,
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
        curve: Curves.fastEaseInToSlowEaseOut,
        footer: Text(
          page_info['title']!,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
