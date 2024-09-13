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
        appBar: MyAppBar(
          title: 'المواد',
          leading: AppBarPopupMenu(),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.count(
              childAspectRatio: .65,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              children: List.generate(
                  page_info.length, (index) => flowershape(context, index)),
            )));
  }

  Widget flowershape(BuildContext context, int index) {
    return InkWell(
      child: Stack(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: green400,
            ),
          ),
          RotatedBox(
            quarterTurns: 1,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: green400,
              ),
            ),
          ),
          Text(
            page_info[index],
            style: TextStyle(color: green100),
          ),
        ],
      ),
      onTap: () {
        //TODO Login Request Function
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => LessonsScreen()));
      },
    );
  }
}
