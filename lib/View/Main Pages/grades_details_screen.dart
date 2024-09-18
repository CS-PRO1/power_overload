import 'package:flutter/material.dart';
import 'package:power_overload/components.dart';

class GradesDetailsScreen extends StatelessWidget {
  GradesDetailsScreen({super.key});

  List<String> page_info = [
    '196',
    '134',
    '179',
    '509',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'مادة الرياضيات',
        leading: AppBarPopupMenu(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'الفصل الاول',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 200,
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Text('الاختبارات الشفهية و الوظائف'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('الاختبارات الشهرية  '),
                    flowershape(context, '196'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text('  الامتحان'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text('  المجموع '),
                  ],
                ),
              ])),
            ],
          ),
        ),
      ),
    );
  }
}
