import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return Stack(
      children: [
        Container(
          color: green400,
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
        RotatedBox(
          quarterTurns: 1,
          child: Container(
            color: green400,
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
        ),
        Text(
          page_info[index],
          style: TextStyle(color: green100),
        ),
      ],
    );
  }
}
