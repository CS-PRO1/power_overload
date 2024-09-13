import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_overload/View/Main%20Pages/lessons_screen.dart';
import 'package:power_overload/components.dart';
import 'package:power_overload/constants.dart';

class SubjectsScreen extends StatelessWidget {
  SubjectsScreen({super.key});

  List<String> page_info = [
    'الرياضيات',
    'العلوم',
    'اللغة العربية',
    'التاريخ',
    'الجغرافيا',
    'اللغة الإنجليزية',
    'علوم الحاسوب',
    'الفيزياء',
    'الكيمياء',
    'الفلسفة',
    'اللغة الفرنسية'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: green100,
        appBar: MyAppBar(
          title: 'المواد',
          leading: AppBarPopupMenu(),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.count(
                childAspectRatio: 1,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 4,
                mainAxisSpacing: 10,
                children: List.generate(
                    page_info.length, (index) => flowershape(context, index)),
              )),
        ));
  }

  Widget flowershape(BuildContext context, int index) {
    return InkWell(
      splashColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: green400,
              ),
            ),
            Transform.rotate(
              angle: 45 * pi / 180,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: green300,
                ),
              ),
            ),
            Center(
              child: Text(
                page_info[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: green100,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => LessonsScreen()));
      },
    );
  }
}
